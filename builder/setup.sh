#!/bin/bash

# Update System
apt-get update && apt-get upgrade -y


# Install System Dependencies
# - openssh-server: for ssh access and web terminal
apt-get install -y \
    software-properties-common \
    python3.10 python3-pip python-is-python3 \
    openssh-server


# Clean up
apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*