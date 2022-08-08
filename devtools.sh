#!/bin/bash

echo Running DevTools built by LSmithx2 (lsmith.co.uk)

PS3='Please choose what you would like to do: '
options=("Option 1 - Disable IPTables" "Disable UFW" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            echo "Disabling IP Tables...."
            iptables -P INPUT ACCEPT
            iptables -P OUTPUT ACCEPT
            iptables -P FORWARD ACCEPT
            iptables -F
            ;;
        "Option 2")
            echo "you chose choice 2"
            ;;
        "Option 3")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
