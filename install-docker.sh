#!/bin/bash

echo "=== Installing Docker ==="
sudo apt update
sudo apt install -y docker.io
sudo usermod -aG docker ubuntu
newgrp docker
docker version

