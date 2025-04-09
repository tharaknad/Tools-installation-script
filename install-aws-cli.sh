#!/bin/bash

echo "=== Installing AWS CLI ==="
sudo apt update && sudo apt upgrade -y
sudo apt install -y unzip curl

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version
rm -rf awscliv2.zip aws/

echo "=== Run 'aws configure' to set your AWS credentials ==="

