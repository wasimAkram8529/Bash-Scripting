#!/bin/bash

read -rp "Please enter you email: " email
regexp="^[A-Za-z0-9_.%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$"

if [[ $email =~ $regexp ]]; then
	echo "Email validation successfull."
else
	echo "Please enter email in correct format."
fi
