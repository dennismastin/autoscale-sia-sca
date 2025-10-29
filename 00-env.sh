#!/bin/bash

## CybrWorld Base URL
export CYBERARK_API_BASE_URL="https://demo.sca.cyberark.cloud/api"

## The profile in the AWS credentials file
export PROFILE="cyberark_elevated"

## the location where you installed the sca-elevate-api script
## The sca-elevate-api script can be found here:   https://github.com/MBCybr/sca-elevate-api
export SCA_ELEVATE="../sca-elevate-api"

## Location of the AWS credentials file
export AWS_CREDS_FILE="$HOME/.aws/credentials"
## The profile in the AWS credentials file
export PROFILE="cyberark_elevated"


## Change this parameter to a unique name for your demo
export ASG_NAME="XXXXX-TEST-ASG"

## Auto Scaling Group (ASG) configuration
export ASG_MIN_SIZE=1 
export ASG_MAX_SIZE=3
export ASG_DESIRED_CAPACITY=1
export ASG_VPC_ID="subnet-0f405d78f166a315c"
export REGION="us-east-1"
