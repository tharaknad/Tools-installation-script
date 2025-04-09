#!/bin/bash

# Get the latest version tag (follow redirect with -L)
LATEST_VERSION=$(curl -Ls https://dl.k8s.io/release/stable.txt)

echo "Latest kubectl version is: $LATEST_VERSION"

# Download kubectl binary
echo "Downloading kubectl..."
curl -LO "https://dl.k8s.io/release/${LATEST_VERSION}/bin/linux/amd64/kubectl"

# Make it executable
chmod +x kubectl

# Move it to a directory in PATH
sudo mv kubectl /usr/local/bin/

# Verify the installation
echo "kubectl installed at:"
which kubectl

echo "Verifying version:"
kubectl version --client --output=yaml

