#!/bin/bash

clear

RED="\e[31m"
Magenta="\e[35m"
BOLDRED="\e[1;${RED}"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

neofetch --ascii_distro BSD -L

# Menampilkan animasi loading
echo -e "${BOLDRED}    DICEK MASBRO"
sp="/\-/\|"
sc=0
spin() {
   printf "\b${sp:sc++:1}"
   ((sc==${#sp})) && sc=0
   sleep 0.1
   spin
}
echo -e "${Magenta} "
echo "proses 10%....."
sleep 1.1
echo "proses 20%....."
sleep 0.8
echo "proses 46%....."
sleep 1.0
echo "proses 58%....."
sleep 0.7
echo "proses 72%....."
sleep 0.5
echo "proses 91%....."
sleep 0.3
echo "proses 100%"
# Tentukan URL yang ingin diambil
url="https://omcyber.com"

# Ambil konten dari URL menggunakan curl dan cari bar>
spin &
PID=$!

echo " "
if curl -s "$url" | grep -q 'content="WordPress'; then
    echo ":::::::::"
    echo -e "${GREEN}website $url dibuat dengan WordPress"
else
    echo ":::::::::"
    echo -e "${GREEN}website $url tidak dibuat dengan WordPress"
fi

kill $PID

echo -e "${ENDCOLOR}  "
