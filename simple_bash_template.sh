#!/bin/bash
# #!/usr/bin/env bash  # Sucht nach der bash location

# Einfaches bash script beispiel


# Stoppt das Skript bei fehler im Skript
set -e
set -x

# oder

set -eE
trap 'echo "Fehler in Zeile $LINENO: Befehl \"$BASH_COMMAND\" fehlgeschlagen"' ERR

# stoppt bei ausführung ohne root rechte
if (( $EUID != 0 )); then echo "Please run as root" 
exit 

fi



echo "

Text der ausgegeben wird

"

# Text in eine Datei einfügen ( -a fügt Text hinzu ohne zu überschreiben)
echo " " | sudo tee -a /home/user/test.txt

# Oder Zeile für Zeile
cat <<EOF >> datei.txt
Zeile 1
Zeile 2
EOF

# Wartet auf das drücken einer beliebigen Taste
read -p "Press any button to continue.."
