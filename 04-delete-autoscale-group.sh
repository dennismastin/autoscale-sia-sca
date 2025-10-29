#!/bin/bash

source ./00-env.sh

clear

echo "Deleting AutoScale Group in $REGION($ASG_VPC_ID): $ASG_NAME..."

aws autoscaling delete-auto-scaling-group \
  --auto-scaling-group-name $ASG_NAME \
  --force-delete \
  --region $REGION \
  --profile $PROFILE
