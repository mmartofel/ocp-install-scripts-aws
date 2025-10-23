#!/bin/bash
# This script lists all AWS Local Zones in the eu-central-1 region.
# It uses the AWS CLI to query for availability zones of type 'local-zone'.
 
aws ec2 describe-availability-zones \
  --region eu-central-1 \
  --filters Name=zone-type,Values=local-zone \
  --all-availability-zones

