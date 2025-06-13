#!/bin/bash

####################
#Author: Bhavnish
#Date: 13th-June-2025
#
#Version: v1
#
#This script will report the AWS resource usage.
#

# AWS S3
# AWS EC2
# AWS IAM Users
# AWS Lambda


#list s3 bucket
echo "Print list of S3 buckets"
aws s3 ls > resourceTracker

#list ec2 instances
echo "Print list of EC2 instances"
#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].KeyName' > resourceTracker

#list lambda function
echo "Print list of lambda functions"
aws lambda list-functions > resourceTracker

#list iam users
echo "Print list of iam users"
aws iam list-users > resourceTracker
