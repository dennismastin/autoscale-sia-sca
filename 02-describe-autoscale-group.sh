#!/bin/bash

source ./00-env.sh

clear

echo "AutoScale Group in $REGION ($ASG_VPC_ID): $ASG_NAME..."

INSTANCE_IDS=$(aws autoscaling describe-auto-scaling-groups \
      --auto-scaling-group-names $ASG_NAME \
      --query 'AutoScalingGroups[0].Instances[*].InstanceId' \
      --output text \
      --profile $PROFILE \
      --region $REGION)


#IPADDR=$(aws ec2 describe-instances \
#      --instance-ids $INSTANCE_IDS \
#      --query 'Reservations[*].Instances[*].PrivateIpAddress' --output text \
#      --profile $PROFILE \
#      --region $REGION)

SUMMARY=$(aws ec2 describe-instances \
      --instance-ids $INSTANCE_IDS \
      --query 'Reservations[*].Instances[*].{Instance:InstanceId,Subnet:SubnetId,PrivateFQDN:PrivateDnsName,PrivateIP:PrivateIpAddress,PublicIP:PublicIpAddress}' --output table \
      --profile $PROFILE \
      --region $REGION)
     


#echo "Instance IDs:    $INSTANCE_IDS"
#echo "Private IPs:     $IPADDR"
#echo "Summary:"
echo "$SUMMARY"



    
