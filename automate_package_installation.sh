#!/bin/bash

PACKAGES_FILE="packages.txt"
LOG_FILE="installation_log.txt"

if command -v apt &> /dev/null; then
	PCK_MNGR="apt"
	INSTALL_CMD="sudo apt install -y"
elif command -v yum &> /dev/null; then
	PCK_MNGR="yum"
	INSTALL_CMD="sudo yum install -y"
elif command -v dnf &> /dev/null; then
	PCK_MNGR="dnf"
	INSTALL_CMD="sudo dnf install -y"
else
	echo "No supported package manager (apt, yum, dnf)" | tee -a "$LOG_FILE"
	exit 1
fi

echo "Using package manager: $PCK_MNGR" | tee -a "$LOG_FILE"
echo "Starting installation: $(date) -----" | tee -a "$LOG_FILE"

while IFS= read -r PACKAGE; do
	if [ -n $PACKAGE ]; then
		echo "Installing $PACKAGE ..." | tee -a "$LOG_FILE"
		if $INSTALL_CMD $PACKAGE >> $LOG_FILE 2>&1; then
			echo "$PACKAGE installed" | tee -a $LOG_FILE
		else
			echo "Package $PACKAGE installation failed, Please try again later" | tee -a $LOG_FILE
		fi
	fi
done < $PACKAGES_FILE

echo "All packages of $PACKAGE_FILE install successfully." | tee -a $LOG_FILE
