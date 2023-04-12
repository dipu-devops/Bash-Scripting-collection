#!/bin/bash
#
set -x #Debug mode
set -e #stop executing command on error
set -o pipefail # Stop when pipe commands fails
# User define Variable
#
name="Dipu"
age="23"

echo $name  
echo "my name is ${name} and my is ${age}"

work="programm"
var="ing"
# Here the output will be I am programming ing will be added at last
echo "I am ${work}ing"

# Here I am using contact to print two commands
echo "I am ${work}${var}"

# Output will be I am programming
echo 'hello deep $var $work'
