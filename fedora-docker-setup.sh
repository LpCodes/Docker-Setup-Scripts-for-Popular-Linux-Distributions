#!/bin/bash

# Install required dependencies
sudo dnf -y install dnf-plugins-core

# Add Docker repository to the package manager
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

# Update the package manager and install Docker
sudo dnf -y install docker-ce docker-ce-cli containerd.io

# Add the current user to the docker group to avoid having to use sudo for every docker command
sudo usermod -aG docker $USER

# Start the Docker service and enable it to start automatically on boot
sudo systemctl start docker
sudo systemctl enable docker
