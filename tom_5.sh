!/bin/bash

#To check whether tomcat is installed or not

apt list --installed | grep tomcat

n=$?
if [ $n == 1 ]
then

   sudo apt install tomcat*

fi

