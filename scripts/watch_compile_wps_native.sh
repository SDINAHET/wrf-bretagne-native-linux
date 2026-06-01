#!/usr/bin/env bash

BASE="${BASE:-$HOME/Documents/meteo/wrf-bretagne-native-linux}"
WPS_DIR="${WPS_DIR:-$BASE/src/WPS}"
LOG="${LOG:-$BASE/logs/compile_wps_native.log}"
REFRESH="${REFRESH:-10}"
START_TIME=$(date +%s)



#WPS_DIR="${WPS_DIR:-/home/stefdev/Documents/meteo/wrf-bretagne-local-forecast/v1_bretagne_9km_24h/src/WPS}"
#LOG="${LOG:-$WPS_DIR/compile_wps_i7.log}"
#REFRESH="${REFRESH:-10}"
#START_TIME=$(date +%s)

GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
CYAN="\033[0;36m"
WHITE="\033[1;37m"
GRAY="\033[0;90m"
NC="\033[0m"

executables=("geogrid.exe" "ungrib.exe" "metgrid.exe")

format_time() {
  local s=$1
  printf "%02dh %02dm %02ds" $((s/3600)) $(((s%3600)/60)) $((s%60))
}

file_size_bytes() {
  if [ -e "$1" ]; then
    stat -Lc%s "$1" 2>/dev/null || echo 0
  else
    echo 0
  fi
}

file_size_human() {
  local file="$1"
  if [ -f "$file" ]; then
    local bytes
    bytes=$(stat -Lc%s "$file" 2>/dev/null || echo 0)
    printf "%s (%s octets)" "$(numfmt --to=iec --suffix=B "$bytes")" "$bytes"
  else
    echo "-"
  fi
}

exe_path() {
  local exe="$1"

  if [ -e "$WPS_DIR/$exe" ]; then
    readlink -f "$WPS_DIR/$exe"
  elif [ -e "$WPS_DIR/geogrid/src/$exe" ]; then
    readlink -f "$WPS_DIR/geogrid/src/$exe"
  elif [ -e "$WPS_DIR/ungrib/src/$exe" ]; then
    readlink -f "$WPS_DIR/ungrib/src/$exe"
  elif [ -e "$WPS_DIR/metgrid/src/$exe" ]; then
    readlink -f "$WPS_DIR/metgrid/src/$exe"
  else
    echo "$WPS_DIR/$exe"
  fi
}

exe_state() {
  local file
  file=$(exe_path "$1")
  local size
  size=$(file_size_bytes "$file")

  if [ ! -f "$file" ]; then
    echo -e "${GRAY}WAIT${NC}"
  elif [ "$size" -eq 0 ]; then
    echo -e "${YELLOW}LINKING${NC}"
  elif [ "$size" -lt 100000 ]; then
    echo -e "${YELLOW}PARTIAL${NC}"
  else
    echo -e "${GREEN}VALID${NC}"
  fi
}

count_done() {
  local done=0
  for exe in "${executables[@]}"; do
    local file size
    file=$(exe_path "$exe")
    size=$(file_size_bytes "$file")
    [ "$size" -gt 100000 ] && ((done++))
  done
  echo "$done"
}

current_stage() {
  if pgrep -f "geogrid.exe" >/dev/null; then
    echo "geogrid.exe"
  elif pgrep -f "ungrib.exe" >/dev/null; then
    echo "ungrib.exe"
  elif pgrep -f "metgrid.exe" >/dev/null; then
    echo "metgrid.exe"
  elif pgrep -f "gfortran|mpif90|mpifort|mpicc|gcc|ld|collect2|jasper" >/dev/null; then
    echo "Compilation / linkage"
  elif [ -f "$LOG" ] && grep -Ei "Fatal Error|undefined reference|cannot find|No such file|collect2: error|Error:" "$LOG" >/dev/null; then
    echo "Erreur détectée"
  else
    echo "En attente ou terminé"
  fi
}

show_header() {
  clear
  echo -e "${CYAN}╔══════════════════════════════════════════════════════════════╗${NC}"
  echo -e "${CYAN}║${NC} ${WHITE}WPS Bretagne Local Forecast - Build Dashboard i7${NC}       ${CYAN}║${NC}"
  echo -e "${CYAN}╚══════════════════════════════════════════════════════════════╝${NC}"
}

show_summary() {
  local done=$1
  local total=${#executables[@]}
  local percent=$((done * 100 / total))
  local elapsed
  elapsed=$(($(date +%s) - START_TIME))

  echo -e "${WHITE}Dossier :${NC} $WPS_DIR"
  echo -e "${WHITE}Log     :${NC} $LOG"
  echo -e "${WHITE}Étape   :${NC} $(current_stage)"
  echo -e "${WHITE}Durée   :${NC} $(format_time "$elapsed")"
  echo ""
  echo -e "${CYAN}Progression${NC}"
  echo "--------------------------------------------------------------"
  echo -e "${BLUE}${percent}%${NC} ($done/$total)"
}

show_executables() {
  echo ""
  echo -e "${CYAN}Exécutables WPS${NC}"
  echo "--------------------------------------------------------------"
  printf "%-14s %-28s %-12s\n" "Fichier" "Taille" "Statut"
  printf "%-14s %-28s %-12s\n" "-------" "------" "------"

  for exe in "${executables[@]}"; do
    local file
    file=$(exe_path "$exe")
    printf "%-14s %-28s %-12b\n" "$exe" "$(file_size_human "$file")" "$(exe_state "$exe")"
    echo "   -> $file"
  done
}

show_system() {
  echo ""
  echo -e "${CYAN}Charge système${NC}"
  echo "--------------------------------------------------------------"
  free -h | awk '/Mem:/ {print "RAM  : " $3 " / " $2}'
  uptime | awk -F'load average:' '{print "Load :" $2}'
  echo ""
  ps -eo pid,%cpu,%mem,comm,args \
    | grep -E "gfortran|mpif90|mpifort|mpicc|gcc|collect2|ld|jasper" \
    | grep -v grep \
    | sort -k2 -nr \
    | head -8
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
  errors=$(grep -Ei "Fatal Error|undefined reference|cannot find|No such file|collect2: error|Error:" "$LOG" | wc -l)

  if [ "$errors" -gt 0 ]; then
    echo -e "${RED}$errors erreur(s) détectée(s)${NC}"
    grep -Ei "Fatal Error|undefined reference|cannot find|No such file|collect2: error|Error:" "$LOG" | tail -10
  else
    echo -e "${GREEN}Aucune erreur critique détectée${NC}"
  fi
}

show_links() {
  echo ""
  echo -e "${CYAN}Vérification liens NetCDF / Jasper${NC}"
  echo "--------------------------------------------------------------"

  if [ -f "$WPS_DIR/configure.wps" ]; then
    grep -n "lnetcdff\|lnetcdf\|jasper\|COMPRESSION_LIBS\|COMPRESSION_INC" "$WPS_DIR/configure.wps" | head -12
  else
    echo -e "${YELLOW}configure.wps introuvable${NC}"
  fi
}

show_activity() {
  echo ""
  echo -e "${CYAN}Dernière activité du log${NC}"
  echo "--------------------------------------------------------------"
  tail -12 "$LOG" 2>/dev/null | sed 's/^/  /'
}

while true; do
  done=$(count_done)

  show_header
  show_summary "$done"
  show_executables
  show_system
  show_errors
  show_links
  show_activity

  echo ""
  echo -e "${GRAY}Rafraîchissement toutes les ${REFRESH}s - Ctrl+C pour quitter${NC}"
  sleep "$REFRESH"
done