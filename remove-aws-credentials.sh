#!/bin/bash

echo "=== Removing AWS CLI stored credentials ==="
rm -rf ~/.aws/credentials ~/.aws/config
echo "✅ Credentials removed"

