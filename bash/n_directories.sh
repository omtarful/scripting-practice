#!/bin/bash
#counts the number of directories in home
echo "Number of directories in home"
ls ~ -l | grep -cE "^dr"

