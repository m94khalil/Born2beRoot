AR=$(uname -a)
PCID=$(grep -c 'physical id' /proc/cpuinfo)
VCPR=$(grep -c processor /proc/cpuinfo)
RAMTOT=$(free -m | grep Mem: | awk '{print $2}')
RAMUSD=$(free -m | grep Mem: | awk '{print $3}')
RAMPER=$(free -m | grep Mem: | awk '{printf("%.2f"), $3/$2*100}')
DISKTOT=$(df -BG | grep /dev/ | grep -v /boot | awk '{fd += $2} END {print fd}')
DISKUSD=$(df -BM | grep /dev/ | grep -v /boot | awk '{ud += $3} END {print ud}')
DISKPER=$(df -Bm | grep /dev/ | grep -v /boot | awk '{ud += $3} {fd += $2} END {printf("%d"), ud/fd*100}')
CPU=$(top -bn1 | grep '^%Cpu' | cut -c 9- | xargs | awk '{printf("%.1f%%"), $1 + $3}')
BOOTLOG=$(who -b | awk '$1 == "system" {print $3 " " $4}')
LVMLOG=$(if [ $(lsblk | grep "lvm" | wc -l) -eq 0 ]; then echo no; else echo yes; fi)
TCPID=$(netstat -an | grep ESTABLISHED | wc -l)
TCPALRT=$(if [ ${TCP} -eq 0 ]; then echo NOT ESTABLISHED; else echo ESTABLISHED; fi)
USERNAMES=$(users | wc -w)
HOSTIP=$(hostname -I)
MACIP=$(ip link show | awk '$1 == "link/ether" {print $2}')
SUDOLOG=$(journalctl _COMM=sudo | grep COMMAND | wc -l)

echo "#Architecture: ${AR}"

echo "#CPU physical: ${PCID}"

echo "#vCPU: ${VCPR}"

echo "#Memory Usage: ${RAMUSD}/${RAMTOT}MB (${RAMPER}%)"

echo "#Disk Usage: ${DISKUSD}/${DISKTOT}Gb (${DISKPER}%)"

echo "#CPU load: ${CPU}"

echo "#Last boot: ${BOOTLOG}"

echo "#LVM use: ${LVMLOG}"

echo "#Connections TCP: ${TCPID} ${TCPALRT}"

echo "#User log: ${USERNAMES}"

echo "#Network: IP ${HOSTIP} (${MACIP})"

echo "#Sudo: ${SUDOLOG} cmd"
