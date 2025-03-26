#!/bin/bash

app=/usr/bin/java
current_version=$(java --version 2> jay.txt 2> jay.txt | grep "openjdk" | awk "{print $2}")
latest_version="openjdk 11.0.25 2024-10-15" 
instructions="sudo apt update && sudo apt install --only upgrade openjdk-11-jdk"

#To check if the latest version of java installed
check() {
	if [ "$current_version" == "$latest_version" ]
	then
		echo "You have the latest version installed"
	else
		echo "you don't have the latest version,to update.."
		echo "Type $instructions"
	fi
	}

#To check if java is installed
if [ -x "$app" ]
then
	echo "Java is installed"
	java --version
	check
else
	echo "Java is not installed, installing..."
	sudo apt install -y openjdk-11-jdk >> jayy.txt 2>&1
	echo "installation successful"

fi

