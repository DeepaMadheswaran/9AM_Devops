#!/bin/bash

# To print file content details
echo " enter your file name"
read name
echo "no. of lines"
wc -l $name|awk '{print$1}'
echo "no. of words"
wc -w $name|awk '{print$1}'
echo "no. of characters"
wc -m $name|awk '{print$1}'
