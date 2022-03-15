# Monitoring.sh explanation

# ARCH=$(uname -a)
<img width="566" alt="Screen Shot 2022-03-15 at 7 19 39 AM" src="https://user-images.githubusercontent.com/51042907/158299403-573b3ad7-3e75-4252-b585-073d5a77369c.png">
alternatively, "uname -snrvmo" 
The uname tool is most commonly used to determine the processor architecture,
the system hostname and the version of the kernel running on the system.
for more details : https://linuxize.com/post/uname-command-in-linux/#:~:text=The%20uname%20command%20is%20used%20to%20print%20basic%20system%20information,free%20to%20leave%20a%20comment

# PCPU=$(grep -c 'physical id' /proc/cpuinfo) 

the grep -c will return number of times the "physical id" is appear in the file.

VCPU=$(grep -c processor /proc/cpuinfo)
the grep -c will return number of times the "physical id" is appear in the file.

FULLRAM=$(free -m | grep Mem: | awk '{print $2}')
free : The free displays the total amount of free and used physical and swap memory in the system, as well as the buffers and caches used by the kernel.
free --help for more details.
free -m show output in mebibites.

USEDRAM=$(free -m | grep Mem: | awk '{print $3}')
PCTRAM=$(free -m | grep Mem: | awk '{printf("%.2f"), $3/$2*100}')
FULLDISK=$(df -BG | grep /dev/ | grep -v /boot | awk '{fd += $2} END {print fd}') # grep -v means invert match
USEDDISK=$(df -BM | grep /dev/ | grep -v /boot | awk '{ud += $3} END {print ud}')
PCTDISK=$(df -Bm | grep /dev/ | grep -v /boot | awk '{ud += $3} {fd += $2} END {printf("%d"), ud/fd*100}')
CPU=$(top -bn1 | grep '^%Cpu' | cut -c 9- | xargs | awk '{printf("%.1f%%"), $1 + $3}')
LASTBOOT=$(who -b | awk '$1 == "system" {print $3 " " $4}')
LVM=$(if [ $(lsblk | grep "lvm" | wc -l) -eq 0 ]; then echo no; else echo yes; fi)
TCP=$(netstat -an | grep ESTABLISHED | wc -l) # display connection for TCP
TCPMSSG=$(if [ ${TCP} -eq 0 ]; then echo NOT ESTABLISHED; else echo ESTABLISHED; fi)
USERLOG=$(users | wc -w) # wc -w => counts words
IP=$(hostname -I)
MAC=$(ip link show | awk '$1 == "link/ether" {print $2}')
SUDO=$(journalctl _COMM=sudo | grep COMMAND | wc -l)

## Shows the architecture of the operating system and its kernel version
echo "#Architecture: ${ARCH}"

## Shows the number of physical processors (CPUs)
echo "#CPU physical: ${PCPU}"

## Shows the number of virtual processors (vCPUs)
echo "#vCPU: ${VCPU}"

## Shows the current available RAM on your server and its utilization rate as percentage
echo "#Memory Usage: ${USEDRAM}/${FULLRAM}MB (${PCTRAM}%)"

## Shows the current available memory on your server and its utilization rate as a percentage
echo "#Disk Usage: ${USEDDISK}/${FULLDISK}Gb (${PCTDISK}%)"

## Shows the current utilization rate of your processors as a percentage
echo "#CPU load: ${CPU}"

## Shows the date and time of the last reboot
echo "#Last boot: ${LASTBOOT}"

## Shows whether LVM is active or not
echo "#LVM use: ${LVM}"

## Shows the number of active connections
echo "#Connections TCP: ${TCP} ${TCPMSSG}"

## Shows the number of users using the server
echo "#User log: ${USERLOG}"

## Shows the IPv4 address of your server and its MAC (Media Access Control) address
echo "#Network: IP ${IP} (${MAC})"

## Shows the number of commands executed with the sudo program
echo "#Sudo: ${SUDO} cmd"
