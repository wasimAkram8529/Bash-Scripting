#!/bin/bash

to_do_file="to-do_file.txt"

show_menu(){
   echo "--------------"
   echo "     To do    "
   echo "--------------"
   echo "1. View Task"
   echo "2. Add Task"
   echo "3. Remove task"
   echo "4. Exit"
   echo -n "Enter your choice: "
}

add_task(){
   read -rp "Enter your task: " task
   echo $task >> $to_do_file
   echo "Task added"
}

view_task(){
   if [ ! -s "$to_do_file" ]; then
	   echo "No task found."
   else
	   echo "Your task"
	   nl -w2 -s"." "$to_do_file"
   fi
}

remove_task(){
   view_task
   read -rp "Enter task number you want to remove: " num
   if [[ $num =~ ^[0-9]+$ ]]; then
           sed -i "${num}d" "$to_do_file"
           echo "Task removed"
   else
	   echo "Please enter a valid task number."
   fi
}

while true; do
	show_menu
	read choice
	case $choice in
		1) view_task ;;
		2) add_task ;;
		3) remove_task ;;
		4) echo "Goodbye"; exit;;
		*) echo "Invalid option, please choose a valid option." ;;
	esac
        echo
done
