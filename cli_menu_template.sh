#!/bin/bash

# Farben definieren
ORANGE='\033[38;5;208m'
RESET='\033[0m'
BOLD='\033[1m'

# Menü-Funktion
show_menu() {
    clear
    echo -e "${ORANGE}${BOLD}╔════════════════════════════════════════╗${RESET}"
    echo -e "${ORANGE}${BOLD}║        HAUPTMENÜ                       ║${RESET}"
    echo -e "${ORANGE}${BOLD}╚════════════════════════════════════════╝${RESET}"
    echo ""
    echo -e "${ORANGE}1)${RESET} Option 1"
    echo -e "${ORANGE}2)${RESET} Option 2"
    echo -e "${ORANGE}3)${RESET} Option 3"
    echo -e "${ORANGE}4)${RESET} Option 4"
    echo -e "${ORANGE}5)${RESET} Option 5"
    echo -e "${ORANGE}6)${RESET} Option 6"
    echo -e "${ORANGE}7)${RESET} Option 7"
    echo ""
    echo -e "${ORANGE}0)${RESET} Beenden"
    echo ""
    echo -e "${ORANGE}─────────────────────────────────────────${RESET}"
}

# Funktionen für die Menüoptionen
option_1() {
    echo "Option 1 ausgewählt"
    read -p "Drücke Enter zum Fortfahren..."
}

option_2() {
    echo "Option 2 ausgewählt"
    read -p "Drücke Enter zum Fortfahren..."
}

option_3() {
    echo "Option 3 ausgewählt"
    read -p "Drücke Enter zum Fortfahren..."
}

option_4() {
    echo "Option 4 ausgewählt"
    read -p "Drücke Enter zum Fortfahren..."
}

option_5() {
    echo "Option 5 ausgewählt"
    read -p "Drücke Enter zum Fortfahren..."
}

option_6() {
    echo "Option 6 ausgewählt"
    read -p "Drücke Enter zum Fortfahren..."
}

option_7() {
    echo "Option 7 ausgewählt"
    read -p "Drücke Enter zum Fortfahren..."
}

# Hauptschleife
while true; do
    show_menu
    read -p "Wähle eine Option: " choice
    
    case $choice in
        1) option_1 ;;
        2) option_2 ;;
        3) option_3 ;;
        4) option_4 ;;
        5) option_5 ;;
        6) option_6 ;;
        7) option_7 ;;
        0) 
            echo -e "${ORANGE}Auf Wiedersehen!${RESET}"
            exit 0
            ;;
        *)
            echo -e "${ORANGE}Ungültige Eingabe. Bitte versuche es erneut.${RESET}"
            read -p "Drücke Enter zum Fortfahren..."
            ;;
    esac
done
