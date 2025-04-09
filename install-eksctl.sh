#!/bin/bash

echo "=== Installing eksctl ==="
sudo apt update && sudo apt upgrade -y

curl -LO "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_Linux_amd64.tar.gz"
tar -xzf eksctl_Linux_amd64.tar.gz
sudo mv eksctl /usr/local/bin/
eksctl version
rm -f eksctl_Linux_amd64.tar.gz

