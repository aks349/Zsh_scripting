#!/bin/zsh

main_menu(){
	#this will set and clear colors using tput.
	BLUE=$(tput setaf 4)
	GREEN=$(tput setaf 2)
	RED=$(tput setaf 5)
	NOCOLOR=$(tput sgr0)
	TODAY=$(date +"%m-%d-%Y")
	TIME=$(date +"%H:%M:%S")
	#this will set the menu color to blue and setup the options in our menu\
	echo $BLUE
	echo "---------------------------------------------"
	menu_options=(
		"Ping Scanner"
		"Show zsh version"
		"Show Current working directory"
		"Quit"
		)
	#we will use the select command to build our menu with a case statement.
	select menu_option in "${menu_options[@]}";do
		case $menu_option in 
			"${menu_options[1]}")
				echo $NOCOLOR
				for i in {1..5};do
				echo "192.168.110.$i"
				if ping -w 1 -c 1 192.168.110.$i > /dev/null
				then
				echo '\t' $GREEN "Host is online "$NOCOLOR
				else 
				echo '\t' $RED "Host of offline " $NOCOLOR
				fi
				done
				echo -----------------------------------
				echo $BLUE "Host Scan Completed:" "Date:"$TODAY "TIME:"$TIME $NOCOLOR;
				exit
				;;
			"${menu_options[2]}")
				zshVersions=$(zsh --version)
				echo $RED
				echo "Version: $zshVersions"
				break
				;;
			"${menu_options[3]}")
				echo "this is your current working directory: $PWD"
				echo $NOCOLOR
				break
				;;
			"${menu_options[4]}")
				echo $NOCOLOR
				exit
				;;
			*)
				echo $RED
				echo "Please enter a number between 1 and 4"
				echo $BLUE
				;;
		esac
	done
}
# we will call our function to be used in this script
main_menu 
