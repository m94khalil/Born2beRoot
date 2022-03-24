# Monitoring.sh explanation

## uname -a
<img width="566" alt="Screen Shot 2022-03-15 at 7 19 39 AM" src="https://user-images.githubusercontent.com/51042907/158299403-573b3ad7-3e75-4252-b585-073d5a77369c.png">
- The uname tool is most commonly used to determine the processor architecture,
- The system hostname and the version of the kernel running on the system.
- For more details : https://linuxize.com/post/uname-command-in-linux/#:~:text=The%20uname%20command%20is%20used%20to%20print%20basic%20system%20information,free%20to%20leave%20a%20comment


## grep -c 'physical id' /proc/cpuinfo
<img width="1125" alt="Screen Shot 2022-03-15 at 7 28 40 AM" src="https://user-images.githubusercontent.com/51042907/158300403-308f94b6-7203-4147-95c7-02359b6400e9.png">

grep --help for mor details
- -c => print count of matching lines
- The grep -c will return number of times the "physical id" is appear in the file /proc/cpuinfo.

<img width="381" alt="Screen Shot 2022-03-15 at 8 33 19 AM" src="https://user-images.githubusercontent.com/51042907/158307031-66f8158a-991e-4528-bb89-51b871923226.png">


## grep -c processor /proc/cpuinfo
- The grep -c will return number of times the "processor" is appear in the file.

<img width="350" alt="Screen Shot 2022-03-15 at 7 30 46 AM" src="https://user-images.githubusercontent.com/51042907/158300622-b80c5307-f318-4a36-a938-8a94fdb3bb82.png">


## free -m | grep Mem: | awk '{print $2}'
- free : The free displays the total amount of free and used physical and swap memory in the system, as well as the buffers and caches used by the kernel.
- free --help for more details.
- free -m show output in mebibites.

<img width="585" alt="Screen Shot 2022-03-15 at 7 37 51 AM" src="https://user-images.githubusercontent.com/51042907/158301378-a7fa8231-5066-413d-9fee-6af76e610541.png">

- free -m | grep Mem: -> when you pipe free -m result into grep Mem: it is going to fetch all the rows which contains Mem:

<img width="588" alt="Screen Shot 2022-03-15 at 7 40 31 AM" src="https://user-images.githubusercontent.com/51042907/158301655-d82f1a96-2c40-467f-8dac-9cf90e8f2fd7.png">

- awk : Awk is a scripting language used for manipulating data and generating reports. The awk command programming language requires no compiling and allows the user to use variables, numeric functions, string functions, and logical operators. 
- awk --help for more details.
- To understand more about "awk" : https://www.geeksforgeeks.org/awk-command-unixlinux-examples/
- free -m | grep Mem: | awk '{print $2}' -> the result of grep will be passed to awk and "print $2" will print the second column.

<img width="399" alt="Screen Shot 2022-03-15 at 7 49 04 AM" src="https://user-images.githubusercontent.com/51042907/158302518-d22b0fed-af65-4bcf-a03e-c9f0968b03b3.png">


## free -m | grep Mem: | awk '{print $3}'
- Similar to the lase case "print $3" will print the third column.

<img width="400" alt="Screen Shot 2022-03-15 at 7 56 55 AM" src="https://user-images.githubusercontent.com/51042907/158303329-bf11b40b-8c78-4e6b-8e35-70ebd7ce3c60.png">


## free -m | grep Mem: | awk '{printf("%.2f"), $3/$2*100}'
- In this case awk will print the result of "(column 3 / column 2) * (100)" with two decimal accuracy.

<img width="514" alt="Screen Shot 2022-03-15 at 8 39 21 AM" src="https://user-images.githubusercontent.com/51042907/158307640-61a60dd9-37f0-47ff-b560-5749e9c96c40.png">


## df -BG | grep /dev/ | grep -v /boot | awk '{fd += $2} END {print fd}'
- df : The ‘df‘ command stands for “disk filesystem“, it is used to get a full summary of disk space usage of the file system on the Linux system.
- For more details: "df --help" also : https://www.geeksforgeeks.org/df-command-in-linux-with-examples/
- df -BG : It will show full summary of disk space usage of the file system on the Linux system which is scaled in Giga bytes.

<img width="555" alt="Screen Shot 2022-03-15 at 8 50 01 AM" src="https://user-images.githubusercontent.com/51042907/158308675-4349571e-d59c-4b9b-b16f-e1ba716f3aa2.png">

- df -BG | grep /dev/ : The result of "df -BG" will be piped into grep command which will fetch all the rows with "/dev/" is present.

<img width="638" alt="Screen Shot 2022-03-15 at 8 55 23 AM" src="https://user-images.githubusercontent.com/51042907/158309220-b5298bec-a9e9-4335-9ac8-3d9b0b9ea9e7.png">

- df -BG | grep /dev/ | grep -v /boot : The result of first grep (you can see it in the above figure) will be piped into "grep -v /boot" and it will fetch every row that does not have /boot present in it.

<img width="606" alt="Screen Shot 2022-03-15 at 8 59 51 AM" src="https://user-images.githubusercontent.com/51042907/158309700-a924fd46-3b36-4ff5-bd52-f17fc88e7494.png">

- df -BG | grep /dev/ | grep -v /boot | awk '{fd += $2} END {print fd}' : The result of the second grep (you can see it in the above figure) will be piped into awk and it have two statements the first statement "fd += $2" which will sum over each row in the second column and the second statement "print fd" will print the result of summation.

<img width="662" alt="Screen Shot 2022-03-15 at 9 07 00 AM" src="https://user-images.githubusercontent.com/51042907/158310506-388c8357-5f43-426d-91dc-d15fd51747b8.png">


## df -BM | grep /dev/ | grep -v /boot | awk '{ud += $3} END {print ud}'
- df -BM : It will show full summary of disk space usage of the file system on the Linux system which is scaled in Mega bytes.

<img width="591" alt="Screen Shot 2022-03-15 at 9 10 41 AM" src="https://user-images.githubusercontent.com/51042907/158310859-21d4cde8-563b-4c00-ba55-174d0e46bad5.png">

- df -BM | grep /dev/ : The result of "df -BM" will be piped into grep command which will fetch all the rows with "/dev/" is present.

<img width="545" alt="Screen Shot 2022-03-15 at 9 53 29 AM" src="https://user-images.githubusercontent.com/51042907/158315654-924a54cb-41dc-4527-af30-8ef98c4bff21.png">

- df -BM | grep /dev/ | grep -v /boot : The result of first grep (you can see it in the above figure) will be piped into "grep -v /boot" and it will fetch every row that does not have /boot present in it.

<img width="579" alt="Screen Shot 2022-03-15 at 9 55 23 AM" src="https://user-images.githubusercontent.com/51042907/158315888-0099d2aa-6b04-493b-8a49-ad973c277004.png">

- df -BM | grep /dev/ | grep -v /boot | awk '{fd += $3} END {print fd}' : The result of the second grep (you can see it in the above figure) will be piped into awk and it have two statements the first statement "fd += $3" which will sum over each row in the third column and the second statement "print fd" will print the result of summation.

<img width="623" alt="Screen Shot 2022-03-15 at 9 58 21 AM" src="https://user-images.githubusercontent.com/51042907/158316280-70147fb6-8b19-430d-b6f0-8aa739fccadf.png">


## df -Bm | grep /dev/ | grep -v /boot | awk '{ud += $3} {fd += $2} END {printf("%d"), ud/fd*100}'
- The above set of command is similar to the above command except for the awk part her we have three statements. The first command "ud += $3" will get sum over each row in third column and store it in ud. The second command "fd += $2" will get sum over each row in second column and store it in fd. The third command "printf("%d"), (ud/fd)*100" will print the result of "(ud/fd)*100".

<img width="784" alt="Screen Shot 2022-03-15 at 10 09 48 AM" src="https://user-images.githubusercontent.com/51042907/158317585-3b20f908-80b9-4625-a644-08f369bbd9f3.png">


## top -bn1 | grep '^%Cpu' | cut -c 9- | xargs | awk '{printf("%.1f%%"), $1 + $3}'

- top : This starts up an interactive command line application, similar to one in the screenshot below. The upper half of the output contains statistics on processes and resource usage, while the lower half contains a list of the currently running processes. You can use the arrow keys and Page Up/Down keys to browse through the list. If you want to quit, simply press “q”. For more details : https://phoenixnap.com/kb/top-command-in-linux#:~:text=The%20top%20(table%20of%20processes,the%20top%20command%20in%20Linux

<img width="1005" alt="Screen Shot 2022-03-15 at 10 23 36 AM" src="https://user-images.githubusercontent.com/51042907/158319273-1de0f37b-7a9a-4816-a960-02e14048eb8a.png">

- top -b : Starts top in batch mode, allowing to send the command's output, runs until killed or until it reaches the specified iteration limit. it refresh the above list and adds a updated version into the terminal every second or two.

- top -bn1 : Specify the maximum number of iterations you want top to produce before ending. here it will iterate only once since n is one.

<img width="735" alt="Screen Shot 2022-03-15 at 10 33 50 AM" src="https://user-images.githubusercontent.com/51042907/158320492-b438eac8-b458-447c-acee-0085624b862c.png">

- cut : Print selected parts of lines from each FILE to standard output. 
- for example: consider you have a file foo.txt 

<img width="89" alt="Screen Shot 2022-03-15 at 10 43 43 AM" src="https://user-images.githubusercontent.com/51042907/158321758-32928ff8-9e4d-4474-99a2-6ebb96b9d399.png">

- Now let's fetch the row with 9 present in it with grep command. 

<img width="228" alt="Screen Shot 2022-03-15 at 10 50 30 AM" src="https://user-images.githubusercontent.com/51042907/158322584-defb7bfe-a6ab-4f35-91e9-3434a16755ee.png">

- Now cut the row from the third character onwards and get the result.

<img width="333" alt="Screen Shot 2022-03-15 at 10 53 00 AM" src="https://user-images.githubusercontent.com/51042907/158322885-6c307e38-1f12-45b3-807b-abe2b6350aba.png">

- for more details : cut --help

- top -bn1 | grep '^%Cpu' : The results "top -bn1" as shown in the above figure will be passed into the "grep '^%Cpu'" where it fetch every row that contain "%Cpu".

<img width="612" alt="Screen Shot 2022-03-15 at 10 36 55 AM" src="https://user-images.githubusercontent.com/51042907/158320867-f09effb6-5728-4ebe-9065-025ebf337bc6.png">

- top -bn1 | grep '^%Cpu' | cut -c 9- : Similarly in our case we are going to cut the grep result from the 9th character onwards to the end of the row, and get the cut out part as result. 

<img width="521" alt="Screen Shot 2022-03-15 at 10 57 25 AM" src="https://user-images.githubusercontent.com/51042907/158323398-f7404ad5-60ba-4018-b033-f7eaffe265bf.png">

- xargs : The xargs command is used in a UNIX shell to convert input from standard input into arguments to a command. In other words, through the use of xargs the output of a command is used as the input of another command. For more details : https://flaviocopes.com/linux-command-xargs/#:~:text=The%20xargs%20command%20is%20used,the%20input%20of%20another%20command.&text=We%20use%20a%20pipe%20(%20%7C%20),pass%20the%20output%20to%20xargs%20

- top -bnl | grep '^%Cpu' | cut -c 9- | xargs : The output of cut command will be used xargs to convert it into arguement of the next command.

<img width="511" alt="Screen Shot 2022-03-15 at 11 12 38 AM" src="https://user-images.githubusercontent.com/51042907/158325374-54d1b839-fb6d-45f7-af8a-47c42b9af09c.png">

- top -bnl | grep '^%Cpu' | cut -c 9- | xargs | awk '{printf"%.1f%%"), $1 + $3}' : I don't know why there xargs but it works fine without xargs also. Anyway what it will do is the awk command receive arguement from xargs and print the sum of column one and column three and print the result with single decimal accuracy.

<img width="858" alt="Screen Shot 2022-03-15 at 11 26 01 AM" src="https://user-images.githubusercontent.com/51042907/158327325-8e69b43d-e7f2-4d97-8c34-ab9093082d11.png">

## who -b | awk '$1 == "system" {print $3 " " $4}'

who : who is a command-line utility that prints a list of currently logged in users. It can also show the current run level, time of the last system boot, and more.

<img width="368" alt="Screen Shot 2022-03-15 at 11 58 50 AM" src="https://user-images.githubusercontent.com/51042907/158332038-57394434-fcea-48d6-b983-a6e692f488a8.png">


who -b : The -b, --boot option tells who to print the time of last system boot, for more details -> who --help. https://linuxize.com/post/who-command-in-linux/#:~:text=who%20is%20a%20command-line,last%20system%20boot%2C%20and%20more

<img width="299" alt="Screen Shot 2022-03-15 at 11 59 33 AM" src="https://user-images.githubusercontent.com/51042907/158332123-4e4e7473-80ce-4c34-9ab3-ebb13f302688.png">

who -b | awk '$1 == "system" {print $3 " " $4}' : here the results of "who -b" is piped to awk command as arguement, the awk will check column one is equal to system if that is true it will print column 3 and column 4.

<img width="469" alt="Screen Shot 2022-03-15 at 12 07 15 PM" src="https://user-images.githubusercontent.com/51042907/158333265-a76638f4-d86d-4b0b-a6fc-04574075f862.png">

- who -b| xargs | cut -c 13-30 : this one is giving me the same result as above i think the below one can also be used. But i don't know for sure.

<img width="341" alt="Screen Shot 2022-03-15 at 12 08 26 PM" src="https://user-images.githubusercontent.com/51042907/158333411-cac6088d-7b15-41c6-894b-78c04539c241.png">

## if [ $(lsblk | grep "lvm" | wc -l) -eq 0 ]; then echo no; else echo yes; fi

- lsblk : This list information about block devices. For more details : lsblk --help.

<img width="547" alt="Screen Shot 2022-03-15 at 12 11 38 PM" src="https://user-images.githubusercontent.com/51042907/158333931-7beebd44-0b32-4e6a-adbf-b625f936da3c.png">

- lsblk | grep "lvm" : The result "lsblk" will be piped into grep as arguement, then grep will fetch the rows with "lvm" as word and shows the results.

<img width="437" alt="Screen Shot 2022-03-15 at 12 17 24 PM" src="https://user-images.githubusercontent.com/51042907/158334884-9cbcec42-9b4f-400a-9ab5-a83f46c2a13f.png">

- wc : wc stands for word count. As the name implies, it is mainly used for counting purpose. It is used to find out number of lines, word count, byte and characters count in the files specified in the file arguments. For more details : wc --help, https://www.geeksforgeeks.org/wc-command-linux-examples/

- wc -l : return the number of lines in the input arguement.

lsblk | grep "lvm" | wc -l : The result of grep will be passed to "wc -l" which will count the number of lines in the input arguement

<img width="324" alt="Screen Shot 2022-03-15 at 12 27 44 PM" src="https://user-images.githubusercontent.com/51042907/158336715-a1857c0b-c756-4171-8acd-89e8218ce5d4.png">

if [ $(lsblk | grep "lvm" | wc -l) -eq 0 ]; then echo no; else echo yes; fi -> This will print "no" if the word count is equal to zero otherwise it will print "yes".

<img width="695" alt="Screen Shot 2022-03-15 at 12 30 38 PM" src="https://user-images.githubusercontent.com/51042907/158337262-088f5c62-df00-4115-af56-ff277216c969.png">

## netstat -an | grep ESTABLISHED | wc -l
- display connection for TCP
- netstat : Netstat command displays various network related information such as network connections, routing tables, interface statistics, masquerade connections, multicast memberships etc., for more details : https://www.geeksforgeeks.org/netstat-command-linux/

<img width="678" alt="Screen Shot 2022-03-15 at 12 36 32 PM" src="https://user-images.githubusercontent.com/51042907/158338147-c7bc1b9a-2d99-4dc0-807b-2b2312dca867.png">

- netstat -a : Show both listening and non-listening sockets. (-a or -all)

<img width="746" alt="Screen Shot 2022-03-15 at 12 39 35 PM" src="https://user-images.githubusercontent.com/51042907/158338653-44923d63-d60a-4e3a-bd26-02342fef98e5.png">

- netstat -n : don't resolve names (-n or --numeric)

<img width="696" alt="Screen Shot 2022-03-15 at 1 56 14 PM" src="https://user-images.githubusercontent.com/51042907/158352824-00f7d43a-0337-490f-8684-28e14b4dab09.png">

- netstat -an : In this case i don't see any difference in using netstat -a and netstat -an. 
- netstat -an | grep ESTABLISHED : "netstat -an" result will be piped to grep and it will fetch the row with "ESTABLISHED" present on it.

<img width="598" alt="Screen Shot 2022-03-16 at 10 09 34 AM" src="https://user-images.githubusercontent.com/51042907/158527388-11b75373-5b0f-4eab-9e92-55c5ed1764e3.png">

- netstat -an | grep ESTABLISHED | wc -l : The result of grep will be piped to "wc -l" command which will show you how many lines are there in grep.

<img width="457" alt="Screen Shot 2022-03-16 at 10 13 38 AM" src="https://user-images.githubusercontent.com/51042907/158527876-47d6112b-5fc5-4335-8873-1c947e34d3be.png">

## if [ ${TCP} -eq 0 ]; then echo NOT ESTABLISHED; else echo ESTABLISHED; fi
- if there is a tcp connection established it will echo ESTABLISHED AND if there is no connection established it will echo NOT ESTABLISHED.

## users | wc -w
- users command will give you the current logged in user name.

<img width="174" alt="Screen Shot 2022-03-16 at 10 17 47 AM" src="https://user-images.githubusercontent.com/51042907/158528415-369b7edc-9fb3-4f47-8bfe-a6c987a5fdad.png">

- users | wc -w : result of the users command will be passed to "wc -w" command which will count the number of words.

<img width="230" alt="Screen Shot 2022-03-16 at 10 19 55 AM" src="https://user-images.githubusercontent.com/51042907/158528658-b66265e8-6ebf-4bcb-b8c1-9c6ef396ea25.png">

## hostname -I 
- hostname will give you hostname. -I will give you the all the ip addresses for the host.

## ip link show | awk '$1 == "link/ether" {print $2}' 
- ip : ip command in Linux is present in the net-tools which is used for performing several network administration tasks. IP stands for Internet Protocol. This command is used to show or manipulate routing, devices, and tunnels. It is similar to ifconfig command but it is much more powerful with more functions and facilities attached to it. for more information : just google or --help
- ip link show :  It is used to display link layer information, it will fetch characteristics of the link layer devices currently available. Any networking device which has a driver loaded can be classified as an available device. 

<img width="850" alt="Screen Shot 2022-03-16 at 10 28 04 AM" src="https://user-images.githubusercontent.com/51042907/158529779-f30c9b99-db32-4789-8b5a-a4af77e6832a.png">

- ip link show | awk '$1 == "link/ether" {print $2}' : The result of "ip link show" is piped to awk which will first check the first column is equal to "link/ether" if thats true it will print whatever in the column 2.

<img width="509" alt="Screen Shot 2022-03-16 at 10 32 25 AM" src="https://user-images.githubusercontent.com/51042907/158530388-193d88a8-6084-41ae-94ae-c187252c381c.png">

## journalctl _COMM=sudo | grep COMMAND | wc -l

- journalctl :  journalctl command in Linux is used to view systemd, kernel and journal logs. For more details : https://www.geeksforgeeks.org/journalctl-command-in-linux-with-examples/
- journalctl _COMM=sudo : This will give you command with logs with _COMM=sudo present in it. (for this do journalctl _COMM=sudo).
-journalctl _COMM=sudo | grep COMMAND : The result of the the journalctl command will be piped into grep command which will fetch rows with "COMMAND" present in it.

<img width="1056" alt="Screen Shot 2022-03-16 at 10 49 18 AM" src="https://user-images.githubusercontent.com/51042907/158532742-320f749f-d20e-4ada-b895-2851aefc8661.png">

- journalctl _COMM=sudo | grep COMMAND | wc -l : The result of the grep command will be piped into "wc -l" command and it give the line count.

<img width="557" alt="Screen Shot 2022-03-16 at 10 52 40 AM" src="https://user-images.githubusercontent.com/51042907/158533198-fd01e263-bd4c-4e85-9976-365e87164687.png">

