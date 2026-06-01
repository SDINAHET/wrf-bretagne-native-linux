╔══════════════════════════════════════════════════════════════╗
║ WRF Bretagne Native Linux - Build Dashboard            ║
╚══════════════════════════════════════════════════════════════╝
Dossier : /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF
Log     : /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/logs/compile_wrf_native.log
Étape   : Compilation / linkage
Durée   : 00h 05m 58s
ETA     : 00h 00m 00s

Progression
--------------------------------------------------------------
[##################################] 100%  (9/9)

Étapes WRF
--------------------------------------------------------------
✓ external
✓ frame
✓ share
✓ phys
✓ dyn_em
✓ wrf.exe
✓ ndown.exe
✓ tc.exe
✓ real.exe

Exécutables générés
------------------------------------------------------------------------------------------------
Fichier      Taille                       Statut             Progression   
--------     ------                       ------             -----------   
wrf.exe      53MB (54817712 octets)       VALID   [##########]  
ndown.exe    45MB (46284312 octets)       VALID   [##########]  
tc.exe       44MB (45547248 octets)       VALID   [##########]  
real.exe     45MB (46427712 octets)       VALID   [##########]  

Tailles attendues
--------------------------------------------------------------
wrf.exe   : environ 40 à 100 Mo
real.exe  : environ 20 à 80 Mo
ndown.exe : environ 20 à 80 Mo
tc.exe    : environ 20 à 80 Mo

Charge système
--------------------------------------------------------------
RAM     : 5,1Gi / 62Gi
Load    : 0,72, 1,69, 1,92
CPU WRF total : 0%

   3842 19.8  1.0 chrome          /opt/google/chrome/chrome --type=renderer --crashpad-handler-pid=3461 --enable-crash-reporter=ae0a5079-e39c-4676-ba93-6a08282dfdca, --origin-trial-disabled-features=CanvasTextNg|WebAssemblyCustomDescriptors --subproc-heap-profiling --change-stack-guard-on-fork=enable --ozone-platform=x11 --lang=fr --num-raster-threads=4 --enable-main-frame-before-activation --renderer-client-id=22 --time-ticks-at-unix-epoch=-1780305930939569 --launch-time-ticks=163571256 --shared-files=v8_context_snapshot_data:100 --metrics-shmem-handle=4,i,16646743365234003249,8240563407397282094,2097152 --field-trial-handle=3,i,4252975752405911191,437808380844512532,262144 --variations-seed-version=20260530-030043.971000-production --pseudonymization-salt-handle=7,i,6692337995901684397,13488090208022470559,4 --trace-process-track-uuid=3190709006926792172
   3506  4.3  0.3 chrome          /opt/google/chrome/chrome --type=gpu-process --ozone-platform=x11 --crashpad-handler-pid=3461 --enable-crash-reporter=ae0a5079-e39c-4676-ba93-6a08282dfdca, --subproc-heap-profiling --change-stack-guard-on-fork=enable --gpu-preferences=UAAAAAAAAAAgAQAEAAAAAAAAAAAAAGAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAYAAAAAAAAABgAAAAAAAAAAQAAAAAAAAAIAAAAAAAAAAgAAAAAAAAA --shared-files --metrics-shmem-handle=4,i,17565822951564362303,6211558854849681371,262144 --field-trial-handle=3,i,4252975752405911191,437808380844512532,262144 --variations-seed-version=20260530-030043.971000-production --pseudonymization-salt-handle=7,i,6692337995901684397,13488090208022470559,4 --trace-process-track-uuid=3190708988185955192
   2720  1.5  0.6 code            /proc/self/exe --type=utility --utility-sub-type=node.mojom.NodeService --lang=fr --service-sandbox-type=none --dns-result-order=ipv4first --experimental-network-inspection --inspect-port=0 --crashpad-handler-pid=2551 --enable-crash-reporter=a59e186e-d040-45a7-a8bd-3af180c4014b,no_channel --user-data-dir=/home/stefdev/.config/Code --standard-schemes=vscode-webview,vscode-file --enable-sandbox --secure-schemes=vscode-webview,vscode-file --cors-schemes=vscode-webview,vscode-file --fetch-schemes=vscode-webview,vscode-file --service-worker-schemes=vscode-webview --code-cache-schemes=vscode-webview,vscode-file --shared-files=v8_context_snapshot_data:100 --field-trial-handle=3,i,6678982842883762097,7116402881919112672,262144 --enable-features=DocumentPolicyIncludeJSCallStacksInCrashReports,EarlyEstablishGpuChannel,EstablishGpuChannelAsync --disable-features=CalculateNativeWinOcclusion,LocalNetworkAccessChecks,ScreenAIOCREnabled,SpareRendererForSitePerProcess,TraceSiteInstanceGetProcessCreation --variations-seed-version --trace-process-track-uuid=3190708991934122588
    876  0.0  0.0 thermald        /usr/sbin/thermald --systemd --dbus-enable --adaptive
  85218  0.9  0.2 chrome          /opt/google/chrome/chrome --type=renderer --crashpad-handler-pid=3461 --enable-crash-reporter=ae0a5079-e39c-4676-ba93-6a08282dfdca, --extension-process --origin-trial-disabled-features=CanvasTextNg|WebAssemblyCustomDescriptors --change-stack-guard-on-fork=enable --ozone-platform=x11 --lang=fr --num-raster-threads=4 --enable-main-frame-before-activation --renderer-client-id=481 --time-ticks-at-unix-epoch=-1780305930939569 --launch-time-ticks=6407042206 --shared-files=v8_context_snapshot_data:100 --metrics-shmem-handle=4,i,1179575951886980390,14161442266758483629,2097152 --field-trial-handle=3,i,4252975752405911191,437808380844512532,262144 --variations-seed-version=20260530-030043.971000-production --pseudonymization-salt-handle=7,i,6692337995901684397,13488090208022470559,4 --trace-process-track-uuid=3190709437029000863
  85068  0.2  0.1 chrome          /opt/google/chrome/chrome --type=renderer --crashpad-handler-pid=3461 --enable-crash-reporter=ae0a5079-e39c-4676-ba93-6a08282dfdca, --extension-process --origin-trial-disabled-features=CanvasTextNg|WebAssemblyCustomDescriptors --change-stack-guard-on-fork=enable --ozone-platform=x11 --lang=fr --num-raster-threads=4 --enable-main-frame-before-activation --renderer-client-id=480 --time-ticks-at-unix-epoch=-1780305930939569 --launch-time-ticks=6401433609 --shared-files=v8_context_snapshot_data:100 --metrics-shmem-handle=4,i,107081022249446281,11588981095270321830,2097152 --field-trial-handle=3,i,4252975752405911191,437808380844512532,262144 --variations-seed-version=20260530-030043.971000-production --pseudonymization-salt-handle=7,i,6692337995901684397,13488090208022470559,4 --trace-process-track-uuid=3190709436091959014
   8327  0.5  0.4 chrome          /opt/google/chrome/chrome --type=renderer --crashpad-handler-pid=3461 --enable-crash-reporter=ae0a5079-e39c-4676-ba93-6a08282dfdca, --origin-trial-disabled-features=CanvasTextNg|WebAssemblyCustomDescriptors --subproc-heap-profiling --change-stack-guard-on-fork=enable --ozone-platform=x11 --lang=fr --num-raster-threads=4 --enable-main-frame-before-activation --renderer-client-id=83 --time-ticks-at-unix-epoch=-1780305930939569 --launch-time-ticks=853621236 --shared-files=v8_context_snapshot_data:100 --metrics-shmem-handle=4,i,7298114372138350982,5404444742689203608,2097152 --field-trial-handle=3,i,4252975752405911191,437808380844512532,262144 --variations-seed-version=20260530-030043.971000-production --pseudonymization-salt-handle=7,i,6692337995901684397,13488090208022470559,4 --trace-process-track-uuid=3190709064086344961
  76610  0.0  0.1 chrome          /opt/google/chrome/chrome --type=renderer --crashpad-handler-pid=3461 --enable-crash-reporter=ae0a5079-e39c-4676-ba93-6a08282dfdca, --origin-trial-disabled-features=CanvasTextNg|WebAssemblyCustomDescriptors --subproc-heap-profiling --change-stack-guard-on-fork=enable --ozone-platform=x11 --lang=fr --num-raster-threads=4 --enable-main-frame-before-activation --renderer-client-id=470 --time-ticks-at-unix-epoch=-1780305930939569 --launch-time-ticks=6211204201 --shared-files=v8_context_snapshot_data:100 --metrics-shmem-handle=4,i,4269938297871472390,2826209118386462948,2097152 --field-trial-handle=3,i,4252975752405911191,437808380844512532,262144 --variations-seed-version=20260530-030043.971000-production --pseudonymization-salt-handle=7,i,6692337995901684397,13488090208022470559,4 --trace-process-track-uuid=3190709426721540524

Diagnostic erreurs
--------------------------------------------------------------
1 erreur(s) détectée(s)
collect2: error: ld returned 1 exit status

Dernière activité du log
--------------------------------------------------------------
   
  -rwxrwxr-x 1 stefdev stefdev 46284312 juin   1 13:10 main/ndown.exe
  -rwxrwxr-x 1 stefdev stefdev 46427712 juin   1 13:10 main/real.exe
  -rwxrwxr-x 1 stefdev stefdev 45547248 juin   1 13:10 main/tc.exe
  -rwxrwxr-x 1 stefdev stefdev 54817712 juin   1 13:08 main/wrf.exe
   
  ==========================================================================
   

Rafraîchissement toutes les 10s - Ctrl+C pour quitter
