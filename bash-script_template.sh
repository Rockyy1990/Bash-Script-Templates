#!/bin/bash

# Farben definieren
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RESET='\033[0m'
BOLD='\033[1m'

# ============================================
# ROOT-ABFRAGE
# ============================================
check_root() {
    if [[ $EUID -ne 0 ]]; then
        echo -e "${RED}${BOLD}✗ Fehler: Dieses Script muss als Root ausgeführt werden!${RESET}"
        echo -e "${YELLOW}Bitte führe das Script mit 'sudo' aus:${RESET}"
        echo -e "${BLUE}sudo $0${RESET}"
        exit 1
    fi
    echo -e "${GREEN}${BOLD}✓ Root-Rechte erkannt${RESET}"
    echo ""
}

# ============================================
# HAUPT-FUNKTIONEN
# ============================================
main_task_1() {
    echo -e "${BLUE}Führe Task 1 aus...${RESET}"
    # Deine Befehle hier
    sleep 1
    echo -e "${GREEN}Task 1 abgeschlossen${RESET}"
}

main_task_2() {
    echo -e "${BLUE}Führe Task 2 aus...${RESET}"
    # Deine Befehle hier
    sleep 1
    echo -e "${GREEN}Task 2 abgeschlossen${RESET}"
}

main_task_3() {
    echo -e "${BLUE}Führe Task 3 aus...${RESET}"
    # Deine Befehle hier
    sleep 1
    echo -e "${GREEN}Task 3 abgeschlossen${RESET}"
}

# ============================================
# REBOOT/EXIT-ABFRAGE
# ============================================
ask_reboot_or_exit() {
    echo ""
    echo -e "${BOLD}════════════════════════════════════════${RESET}"
    echo -e "${YELLOW}${BOLD}Was möchtest du tun?${RESET}"
    echo -e "${BOLD}════════════════════════════════════════${RESET}"
    echo -e "${BLUE}1)${RESET} System neu starten (Reboot)"
    echo -e "${BLUE}2)${RESET} Script beenden (Exit)"
    echo -e "${BOLD}════════════════════════════════════════${RESET}"
    echo ""
    
    read -p "Wähle eine Option (1 oder 2): " choice
    
    case $choice in
        1)
            echo ""
            echo -e "${YELLOW}${BOLD}System wird neu gestartet...${RESET}"
            sleep 2
            reboot
            ;;
        2)
            echo ""
            echo -e "${GREEN}${BOLD}✓ Script beendet. Auf Wiedersehen!${RESET}"
            exit 0
            ;;
        *)
            echo -e "${RED}Ungültige Eingabe. Bitte versuche es erneut.${RESET}"
            ask_reboot_or_exit
            ;;
    esac
}

# ============================================
# HAUPTPROGRAMM
# ============================================
main() {
    clear
    echo -e "${BOLD}════════════════════════════════════════${RESET}"
    echo -e "${BLUE}${BOLD}   ADMIN-SCRIPT MIT ROOT-ABFRAGE${RESET}"
    echo -e "${BOLD}════════════════════════════════════════${RESET}"
    echo ""
    
    # Root-Abfrage durchführen
    check_root
    
    # Hauptaufgaben ausführen
    echo -e "${BOLD}Starte Hauptaufgaben...${RESET}"
    echo ""
    
    main_task_1
    main_task_2
    main_task_3
    
    echo ""
    echo -e "${GREEN}${BOLD}✓ Alle Aufgaben abgeschlossen!${RESET}"
    
    # Reboot oder Exit abfragen
    ask_reboot_or_exit
}

# Script starten
main
