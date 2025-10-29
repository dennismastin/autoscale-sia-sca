#!/bin/bash

source ./00-env.sh

aws cloudformation deploy \
  --template-file "./cloudformation.yaml" \
  --stack-name "$ASG_NAME" \
  --parameter-overrides \
      ASGName="$ASG_NAME" \
      LaunchTemplateName="$ASG_LAUNCH_TEMPLATE_NAME" \
      LaunchTemplateVersion="$ASG_LAUNCH_TEMPLATE_VERSION" \
      MinSize="$ASG_MIN_SIZE" \
      MaxSize="$ASG_MAX_SIZE" \
      DesiredCapacity="$ASG_DESIRED_CAPACITY" \
      SubnetIds="$ASG_VPC_ID" \
  --capabilities CAPABILITY_NAMED_IAM \
  --region "$REGION" \
  --profile "$PROFILE"
