#!/bin/bash
# Created And Scripted by RC Chuah-(RaynerSec)

# ================
# Script Structure
# ================

# Menu Choices
function full() {
     bash -c "cd ${HOME} && $(curl -fsSL https://bit.do/fNyso) && rm -rf ${HOME}/kalifs-armhf-full.tar.xz && rm -rf ${HOME}/kalifs-arm64-full.tar.xz && rm -rf ${HOME}/kalifs-armhf-full.sha512sum && rm -rf ${HOME}/kalifs-arm64-full.sha512sum"
}

function minimal() {
     bash -c "cd ${HOME} && $(curl -fsSL https://bit.do/fNysW) && rm -rf ${HOME}/kalifs-armhf-minimal.tar.xz && rm -rf ${HOME}/kalifs-arm64-minimal.tar.xz && rm -rf ${HOME}/kalifs-armhf-minimal.sha512sum && rm -rf ${HOME}/kalifs-arm64-minimal.sha512sum"
}

function uninstall() {
     bash -c "rm -rf ${HOME}/kali-arm64 && rm -rf ${HOME}/kali-armhf && rm -rf ${PREFIX}/bin/nh && rm -rf ${PREFIX}/bin/nethunter && sleep 1 && echo [+] Successfully Uninstalled ..."
}

# Press Enter To Continue Function
function press_enter() {
     echo ""
     echo -n "Press Enter To Continue..."
     read
     clear
}

# Incorrect Selection Function
function incorrect_selection() {
     echo "Incorrect Selection! Try Again."
}

# ===================
# Script Funtionality
# ===================

# Usage Menu
until [[ "$choice" = "4" ]]; do
     clear
     echo "Kali-Nethunter-In-Termux Installer"
     echo ""
     echo "Script By RC Chuah-(RaynerSec)"
     echo ""
     echo "Current Date And Time:"
     date
     echo ""
     echo "[1]-Install Kali Nethunter In Termux Full Version"
     echo "[2]-Install Kali Nethunter In Termux Minimal Version"
     echo "[3]-Uninstall Kali Nethunter In Termux"
     echo "[4]-Exit Menu"
     echo ""
     echo -n "Enter Choice: "
     read choice
     case $choice in
          1 ) clear ; full ; press_enter ;;
          2 ) clear ; minimal ; press_enter ;;
          3 ) clear ; uninstall ; press_enter ;;
          4 ) clear ; exit ;;
          * ) clear ; incorrect_selection ; press_enter ;;
     esac
done
