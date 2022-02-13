#!/bin/bash

#server details

echo "server name:"
hostname

echo "Memory:"
free -h

echo "cpu:"
mpstat

echo "Details about disk"
df -h

