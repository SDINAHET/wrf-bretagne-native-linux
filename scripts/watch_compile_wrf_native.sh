#!/bin/bash

BASE="${BASE:-$HOME/Documents/meteo/wrf-bretagne-native-linux}"
WRF_DIR="${WRF_DIR:-$BASE/src/WRF}"
LOG="${LOG:-$BASE/logs/compile_wrf_native.log}"
REFRESH="${REFRESH:-10}"
START_TIME=$(date +%s)

GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
CYAN="\033[0;36m"
WHITE="\033[1;37m"
GRAY="\033[0;90m"
NC="\033[0m"

steps=("external" "frame" "share" "phys" "dyn_em" "wrf.exe" "ndown.exe" "tc.exe" "real.exe")
executables=("wrf.exe" "ndown.exe" "tc.exe" "real.exe")

format_time() {
  local s=$1
  printf "%02dh %02dm %02ds" $((s/3600)) $(((s%3600)/60)) $((s%60))
}

bar() {
  local percent=$1
  local width=34
  local filled=$((percent * width / 100))
  local empty=$((width - filled))
  printf "["
  printf "%${filled}s" | tr ' ' '#'
  printf "%${empty}s" | tr ' ' '-'
  printf "]"
}

file_size_bytes() {
  [ -f "$1" ] && stat -c%s "$1" 2>/dev/null || echo 0
}

file_size_human() {
  local file="$1"
  if [ -f "$file" ]; then
    local bytes
    bytes=$(stat -c%s "$file" 2>/dev/null || echo 0)
    printf "%s (%s octets)" "$(numfmt --to=iec --suffix=B "$bytes")" "$bytes"
  else
    echo "-"
  fi
}

exe_state() {
  local exe="$1"
  local file="$WRF_DIR/main/$exe"
  local size
  size=$(file_size_bytes "$file")

  if [ ! -f "$file" ]; then
    echo -e "${GRAY}WAIT${NC}"
  elif [ "$size" -eq 0 ]; then
    echo -e "${YELLOW}LINKING${NC}"
  elif [ "$size" -lt 10000000 ]; then
    echo -e "${YELLOW}PARTIAL${NC}"
  else
    echo -e "${GREEN}VALID${NC}"
  fi
}

exe_progress_bar() {
  local exe="$1"
  local file="$WRF_DIR/main/$exe"
  local size
  size=$(file_size_bytes "$file")

  if [ ! -f "$file" ]; then
    echo "[----------]"
  elif [ "$size" -eq 0 ]; then
    echo "[#---------]"
  elif [ "$size" -lt 1000000 ]; then
    echo "[###-------]"
  elif [ "$size" -lt 5000000 ]; then
    echo "[#####-----]"
  elif [ "$size" -lt 10000000 ]; then
    echo "[#######---]"
  else
    echo "[##########]"
  fi
}

current_stage() {
  if pgrep -f "lto1" >/dev/null; then
    echo "Optimisation finale LTO"
  elif pgrep -f "mpif90.*-o .*\.exe" >/dev/null; then
    echo "Création d'un exécutable"
  elif pgrep -f "gfortran|mpif90|ld|collect2" >/dev/null; then
    echo "Compilation / linkage"
  elif [ -f "$LOG" ] && grep -Ei "undefined reference|collect2: error|error:" "$LOG" >/dev/null; then
    echo "Erreur détectée"
  else
    echo "En attente ou terminé"
  fi
}

count_done() {
  local done_count=0
  for step in "${steps[@]}"; do
    if [[ "$step" == *.exe ]]; then
      local size
      size=$(file_size_bytes "$WRF_DIR/main/$step")
      [ "$size" -gt 10000000 ] && ((done_count++))
    else
      grep -q "$step" "$LOG" 2>/dev/null && ((done_count++))
    fi
  done
  echo "$done_count"
}

show_header() {
  clear
  echo -e "${CYAN}╔══════════════════════════════════════════════════════════════╗${NC}"
  echo -e "${CYAN}║${NC} ${WHITE}WRF Bretagne Native Linux - Build Dashboard${NC}            ${CYAN}║${NC}"
  echo -e "${CYAN}╚══════════════════════════════════════════════════════════════╝${NC}"
}

show_summary() {
  local done_count=$1
  local total=${#steps[@]}
  local percent=$((done_count * 100 / total))
  local now elapsed eta total_est

  now=$(date +%s)
  elapsed=$((now - START_TIME))

  if [ "$percent" -gt 0 ]; then
    total_est=$((elapsed * 100 / percent))
    eta=$((total_est - elapsed))
  else
    eta=0
  fi

  echo -e "${WHITE}Dossier :${NC} $WRF_DIR"
  echo -e "${WHITE}Log     :${NC} $LOG"
  echo -e "${WHITE}Étape   :${NC} $(current_stage)"
  echo -e "${WHITE}Durée   :${NC} $(format_time "$elapsed")"
  echo -e "${WHITE}ETA     :${NC} $(format_time "$eta")"
  echo ""
  echo -e "${CYAN}Progression${NC}"
  echo "--------------------------------------------------------------"
  echo -e "$(bar "$percent") ${BLUE}${percent}%${NC}  ($done_count/$total)"
}

show_steps() {
  echo ""
  echo -e "${CYAN}Étapes WRF${NC}"
  echo "--------------------------------------------------------------"

  for step in "${steps[@]}"; do
    if [[ "$step" == *.exe ]]; then
      local size
      size=$(file_size_bytes "$WRF_DIR/main/$step")

      if [ "$size" -gt 10000000 ]; then
        echo -e "${GREEN}✓${NC} $step"
      elif [ -f "$WRF_DIR/main/$step" ]; then
        echo -e "${YELLOW}●${NC} $step en création"
      else
        echo -e "${GRAY}○${NC} $step"
      fi
    else
      if grep -q "$step" "$LOG" 2>/dev/null; then
        echo -e "${GREEN}✓${NC} $step"
      else
        echo -e "${GRAY}○${NC} $step"
      fi
    fi
  done
}

show_executables() {
  echo ""
  echo -e "${CYAN}Exécutables générés${NC}"
  echo "------------------------------------------------------------------------------------------------"
  printf "%-12s %-28s %-18s %-14s\n" "Fichier" "Taille" "Statut" "Progression"
  printf "%-12s %-28s %-18s %-14s\n" "--------" "------" "------" "-----------"

  for exe in "${executables[@]}"; do
    local file="$WRF_DIR/main/$exe"
    printf "%-12s %-28s %-18b %-14s\n" \
      "$exe" \
      "$(file_size_human "$file")" \
      "$(exe_state "$exe")" \
      "$(exe_progress_bar "$exe")"
  done
}

show_system() {
  echo ""
  echo -e "${CYAN}Charge système${NC}"
  echo "--------------------------------------------------------------"

  free -h | awk '/Mem:/ {print "RAM     : " $3 " / " $2}'
  uptime | awk -F'load average:' '{print "Load    :" $2}'

  local cpu_total
  cpu_total=$(ps -eo %cpu,comm | grep -E "lto1|mpif90|gfortran|f951|cc1|ld" | awk '{s+=$1} END {print s+0}')
  echo -e "${GREEN}CPU WRF total : ${cpu_total}%${NC}"

  echo ""
  ps -eo pid,%cpu,%mem,comm,args \
    | grep -E "mpif90|gfortran|collect2|ld|lto1" \
    | grep -v grep \
    | sort -k2 -nr \
    | head -8
}

show_expected_sizes() {
  echo ""
  echo -e "${CYAN}Tailles attendues${NC}"
  echo "--------------------------------------------------------------"
  echo "wrf.exe   : environ 40 à 100 Mo"
  echo "real.exe  : environ 20 à 80 Mo"
  echo "ndown.exe : environ 20 à 80 Mo"
  echo "tc.exe    : environ 20 à 80 Mo"
}

show_errors() {
  echo ""
  echo -e "${CYAN}Diagnostic erreurs${NC}"
  echo "--------------------------------------------------------------"

  if [ ! -f "$LOG" ]; then
    echo -e "${YELLOW}Log introuvable${NC}"
    return
  fi

  local errors
  errors=$(grep -Ei "undefined reference|collect2: error|error:" "$LOG" | wc -l)

  if [ "$errors" -gt 0 ]; then
    echo -e "${RED}$errors erreur(s) détectée(s)${NC}"
    grep -Ei "undefined reference|collect2: error|error:" "$LOG" | tail -5
  else
    echo -e "${GREEN}Aucune erreur critique détectée${NC}"
  fi
}

show_activity() {
  echo ""
  echo -e "${CYAN}Dernière activité du log${NC}"
  echo "--------------------------------------------------------------"
  tail -8 "$LOG" 2>/dev/null | sed 's/^/  /'
}

while true; do
  done_count=$(count_done)

  show_header
  show_summary "$done_count"
  show_steps
  show_executables
  show_expected_sizes
  show_system
  show_errors
  show_activity

  echo ""
  echo -e "${GRAY}Rafraîchissement toutes les ${REFRESH}s - Ctrl+C pour quitter${NC}"

  sleep "$REFRESH"
done