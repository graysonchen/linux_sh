#!/bin/sh
show_menu(){
    NORMAL=`echo "\033[m"`
    MENU=`echo "\033[36m"` #Blue
    NUMBER=`echo "\033[33m"` #yellow
    FGRED=`echo "\033[41m"`
    RED_TEXT=`echo "\033[31m"`
    ENTER_LINE=`echo "\033[33m"`
    echo -e "${MENU}*********************************************${NORMAL}"
    echo -e "${MENU}**${NUMBER} 1)${MENU} git alias shortcuts ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 2)${MENU} ubuntu ssh fingerprint_keys ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 3)${MENU} find big size ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 4)${MENU} memsort ${NORMAL}"
    echo -e "${MENU}**${NUMBER} x)${MENU} Exit ${NORMAL}"
    echo -e "${MENU}*********************************************${NORMAL}"
    echo -e "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${NORMAL}"
    read opt
}
# function option_picked() {
#     COLOR='\033[01;31m' # bold red
#     RESET='\033[00;00m' # normal white
#     MESSAGE=${@:-"${RESET}Error: No message passed"}
#     echo -e "${COLOR}${MESSAGE}${RESET}"
# }

clear
show_menu
while [ opt != '' ];
    do
    if [[ $opt = "" ]]; then
            exit;
    else
        case $opt in
        1) exit;
        # option_picked "Option 1 Picked";
        curl -sSL http://dlj.bz/MQIGwj |bash;
        ;;

        2) echo;
        curl -sSL http://dlj.bz/7WcM |bash
        ;;

        3) echo;
        curl -sSL http://dlj.bz/PpYuZ2 |bash
        ;;

        4) echo;
        curl -sSL http://dlj.bz/SFDD |bash
        ;;

        # 3) clear;
        #     option_picked "Option 3 Picked";
        # sudo service apache2 restart;
        #     #show_menu;
        #     ;;

        4) clear;
            option_picked "Option 4 Picked";
        ssh lmesser@ -p 2010;
            #show_menu;
            ;;

        x)exit;
        ;;

        \n)exit;
        ;;

        *)clear;
        option_picked "Pick an option from the menu";
        show_menu;
        ;;
    esac
fi
done
