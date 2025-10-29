#!/bin/bash

source ./00-env.sh

aws cloudformation deploy \
  --template-file "./cloudformation.yaml" \
  --stack-name my-asg-stack-01 \
  --parameter-overrides \
      ASGName="$ASG_NAME" \
      LaunchTemplateName="ENABLEMENT-FALL-2025-SIA-v2" \
      LaunchTemplateVersion="2" \
      MinSize="$ASG_MIN_SIZE" \
      MaxSize="$ASG_MAX_SIZE" \
      DesiredCapacity="$ASG_DESIRED_CAPACITY" \
      SubnetIds="$ASG_VPC_ID" \
  --capabilities CAPABILITY_NAMED_IAM \
  --region "$REGION" \
  --profile "$PROFILE"
