#!/bin/bash

#################################
#
# Author: Dipu
#
# Date: 11-04-2023 
#
# This script output the health of a node
#
# Version: v1
#
# ###############################

set -x # Its on debug mode
set -e # Its exit the script when there is an error
set -o pipefail

# Command to check Disk space
df -h 

# commands to check for Dist size
free -h

# commands to check number os process
nproc

# commands to check running pross
ps -ef | grep 1 | awk -F " " '{print $2}'

