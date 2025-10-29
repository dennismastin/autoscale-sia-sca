#!/bin/bash

source ./00-env.sh

clear

echo "Updating AutoScale Group in $REGION\($ASG_VPC_ID\): capacity 3 $ASG_NAME..."
echo

echo -e "aws autoscaling update-auto-scaling-group \r
  --auto-scaling-group-name $ASG_NAME \r
  --desired-capacity 1 \r
  --region $REGION \r
  --profile $PROFILE"

aws autoscaling update-auto-scaling-group \
  --auto-scaling-group-name $ASG_NAME \
  --desired-capacity 1 \
  --region $REGION \
  --profile $PROFILE
