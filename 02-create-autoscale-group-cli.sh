#!/bin/bash

clear

source ./00-env.sh

echo "Creating AutoScale Group in $REGION ($ASG_VPC_ID): $ASG_NAME..."
echo
echo -e "aws autoscaling create-auto-scaling-group \r
  --auto-scaling-group-name $ASG_NAME \r
  --launch-template \"LaunchTemplateName=$ASG_LAUNCH_TEMPLATE_NAME,Version=$ASG_LAUNCH_TEMPLATE_VERSION\" \r
  --min-size $ASG_MIN_SIZE \r
  --max-size $ASG_MAX_SIZE \r
  --desired-capacity $ASG_DESIRED_CAPACITY \r
  --vpc-zone-identifier $ASG_VPC_ID \r
  --tags "Key=name,Value=$ASG_NAME" "Key=I_OWNER,Value=$EMAIL" "Key=I_PURPOSE,Value=2026-SEWORKSHOP-AWS-USER-ASG-INSTANCES" "Key=CREATED_DATE,Value=$WORKSHOP_DATE",PropagateAtLaunch=true \r
  --profile $PROFILE \r
  --region $REGION"

aws autoscaling create-auto-scaling-group \
  --auto-scaling-group-name $ASG_NAME \
  --launch-template "LaunchTemplateName=ENABLEMENT-FALL-2025-SIA-v2,Version=2" \
  --min-size $ASG_MIN_SIZE\
  --max-size $ASG_MAX_SIZE\
  --desired-capacity $ASG_DESIRED_CAPACITY \
  --vpc-zone-identifier $ASG_VPC_ID \
  --tags "Key=name,Value=$ASG_NAME" "Key=I_OWNER,Value=$EMAIL" "Key=I_PURPOSE,Value=2026-SEWORKSHOP-AWS-USER-ASG-INSTANCES" "Key=CREATED_DATE,Value=$WORKSHOP_DATE",PropagateAtLaunch=true \
  --profile $PROFILE \
  --region $REGION

  


