stefdev@stefdev-HP-EliteDesk-800-G2-SFF:~/Documents/meteo/wrf-bretagne-native-linux$ sudo apt install -y aha
[sudo] Mot de passe de stefdev :
Lecture des listes de paquets... Fait
Construction de l'arbre des dépendances... Fait
Lecture des informations d'état... Fait
Les paquets suivants ont été installés automatiquement et ne sont plus nécessaires :
  linux-headers-6.8.0-85 linux-headers-6.8.0-85-generic
  linux-headers-6.8.0-88 linux-headers-6.8.0-88-generic
  linux-image-6.8.0-85-generic linux-image-6.8.0-88-generic
  linux-modules-6.8.0-85-generic linux-modules-6.8.0-88-generic
  linux-modules-extra-6.8.0-85-generic linux-modules-extra-6.8.0-88-generic
  linux-tools-6.8.0-85 linux-tools-6.8.0-85-generic linux-tools-6.8.0-88
  linux-tools-6.8.0-88-generic
Veuillez utiliser « sudo apt autoremove » pour les supprimer.
Les NOUVEAUX paquets suivants seront installés :
  aha
0 mis à jour, 1 nouvellement installés, 0 à enlever et 131 non mis à jour.
Il est nécessaire de prendre 14,5 ko dans les archives.
Après cette opération, 51,2 ko d'espace disque supplémentaires seront utilisés.
Réception de :1 http://archive.ubuntu.com/ubuntu noble/universe amd64 aha amd64 0.5.1-3build1 [14,5 kB]
14,5 ko réceptionnés en 0s (71,7 ko/s)
Sélection du paquet aha précédemment désélectionné.
(Lecture de la base de données... 635219 fichiers et répertoires déjà installés.)
Préparation du dépaquetage de .../aha_0.5.1-3build1_amd64.deb ...
Dépaquetage de aha (0.5.1-3build1) ...
Paramétrage de aha (0.5.1-3build1) ...
Traitement des actions différées (« triggers ») pour man-db (2.12.0-4build2) ...
stefdev@stefdev-HP-EliteDesk-800-G2-SFF:~/Documents/meteo/wrf-bretagne-native-linux$ bash scripts/watch_compile_wrf_native.sh | aha > docs/build-reports/wrf_dashboard.html
bash: docs/build-reports/wrf_dashboard.html: Aucun fichier ou dossier de ce nom
stefdev@stefdev-HP-EliteDesk-800-G2-SFF:~/Documents/meteo/wrf-bretagne-native-linux$ mkdir -p docs/build-reports
stefdev@stefdev-HP-EliteDesk-800-G2-SFF:~/Documents/meteo/wrf-bretagne-native-linux$ timeout 2 bash scripts/watch_compile_wrf_native.sh | aha > docs/build-reports/wrf_dashboard.html
Complété
stefdev@stefdev-HP-EliteDesk-800-G2-SFF:~/Documents/meteo/wrf-bretagne-native-linux$ timeout 2 bash scripts/watch_compile_wps_native.sh | aha > docs/build-reports/wps_dashboard.html
Complété
