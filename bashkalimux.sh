#!/bin/bash
# Created And Scripted by RC Chuah-(RaynerSec)

# ================
# Script Structure
# ================

# Install Kali Nethunter In Termux Full Version Function
function full() {
     bash -c "cd ${HOME} && $(curl -fsSL https://bit.ly/install-nethunter-full-termux) && rm -rf ${HOME}/kalifs-armhf-full.tar.xz && rm -rf ${HOME}/kalifs-arm64-full.tar.xz && rm -rf ${HOME}/kalifs-armhf-full.sha512sum && rm -rf ${HOME}/kalifs-arm64-full.sha512sum"
}

# Install Kali Nethunter In Termux Minimal Version Function
function minimal() {
     bash -c "cd ${HOME} && $(curl -fsSL https://bit.ly/install-nethunter-minimal-termux) && rm -rf ${HOME}/kalifs-armhf-minimal.tar.xz && rm -rf ${HOME}/kalifs-arm64-minimal.tar.xz && rm -rf ${HOME}/kalifs-armhf-minimal.sha512sum && rm -rf ${HOME}/kalifs-arm64-minimal.sha512sum"
}

# Install Kali Nethunter In Termux Nano Version Function
function nano() {
     bash -c "cd ${HOME} && $(curl -fsSL https://bit.ly/install-nethunter-nano-termux) && rm -rf ${HOME}/kalifs-armhf-nano.tar.xz && rm -rf ${HOME}/kalifs-arm64-nano.tar.xz && rm -rf ${HOME}/kalifs-armhf-nano.sha512sum && rm -rf ${HOME}/kalifs-arm64-nano.sha512sum"
}

# Uninstall Kali Nethunter In Termux Function
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
until [[ "$choice" = "5" ]]; do
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
     echo "[3]-Install Kali Nethunter In Termux Nano Version"
     echo "[4]-Uninstall Kali Nethunter In Termux"
     echo "[5]-Exit Menu"
     echo ""
     echo -n "Enter Choice: "
     read choice
     # Menu Choices
     case $choice in
          1 ) clear ; full ; press_enter ;;
          2 ) clear ; minimal ; press_enter ;;
          3 ) clear ; nano ; press_enter ;;
          4 ) clear ; uninstall ; press_enter ;;
          5 ) clear ; exit ;;
          * ) clear ; incorrect_selection ; press_enter ;;
     esac
done
