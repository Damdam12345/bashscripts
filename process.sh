#!/bin/bash


#To print out process for user
#echo "These are the processes running for $USER"
#ps aux | grep "user"


#To sort out process for user either by memory or input
#echo "Processes running for $USER"
#read -p "Hi,$USER how do you want your processes to be sorted - memory or cpu: " choice
#case $choice in
#	memory)
#		echo "Memory usage is in ascending order and also outlined in the fourth column"
#		ps aux --sort=%mem | grep "user"
#		;;
#	cpu)
#		echo "CPU consumption in ascending order and outlined in the third column"
#		ps aux --sort=%cpu | grep "user"
#		;;
#	*)
#		echo "Do you need help,check out how your processes work by typing the command ps aux"
#esac



#Number of user processes sorted
echo "Processes running for $USER"
read -p "Hi,$USER how do you want your processes to be sorted - memory or cpu: " choice
case $choice in
        memory)
                echo "Memory usage of $USER processes"
                ps aux | grep "user" | awk ' {print $1, $6 } '
                ;;
        cpu)
                echo "CPU consumption of $USER processes"
                ps aux | grep "user" | awk ' { print $1, $6 } ' 
                ;;
        *)
                echo "Do you need help,check out how your processes work by typing the command ps aux"

esac	
#Number of processes to be viewed
read -p "How many processes do you want to print [max = 20]: " choose
                case $choose in
                        [1-5])
                                ps aux | head -n 6
                                ;;
                        [6-10])
                                ps aux | head -n 11
                                ;;
                        11|12|13|14|15)
                                ps aux | head -n 16
                                ;;
                        16|17|18|19|20)
                                ps aux | head -n 21
                                ;;
                        *)
                                echo "The maximum number to enter is 20"
                                ;;
                esac
