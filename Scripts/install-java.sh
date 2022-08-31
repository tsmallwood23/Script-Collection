#!/bin/bash

function install_java () {

 apt update
 sudo apt install default-jre

}

java_version=$(java -version 2>&1 >/dev/null | grep "java version\|openjdk version" | awk '{print substr($3,2,2)}')

function detect_java () {

	if [[ "$java_ver" -ge 11 ]]
	then
		echo "Java is installed"

	else 
		echo "Java is not installed"
	fi

}

install_java

detect_java
