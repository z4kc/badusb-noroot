#!bin/bash
pkg update -y ; pkg upgrade -y
pkg install android-tools
pkg install termux-api
bash usbchecker.sh
