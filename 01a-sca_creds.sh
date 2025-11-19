#!/bin/bash
clear
source ./00-env.sh
echo "grep -A 5 \"cyberark_elevated\" $AWS_CREDS_FILE"

grep -A 5 "cyberark_elevated" $AWS_CREDS_FILE
