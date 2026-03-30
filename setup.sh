#!/bin/bash

# Full Send ECU - Universal Setup Script
# Detects OS and automatically installs all dependencies

set -e

echo "========================================"
echo "Full Send ECU - Automatic Setup"
echo "========================================"

# Detect OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="linux"
    if grep -qi "ubuntu\|debian" /etc/os-release; then
        DISTRO="debian"
    elif grep -qi "fedora\|rhel\|centos" /etc/os-release; then
        DISTRO="redhat"
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macos"
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
    OS="windows"
fi

echo "Detected OS: $OS"

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

install_docker() {
    echo "Installing Docker..."
    if [[ "$OS" == "linux" ]]; then
        if [[ "$DISTRO" == "debian" ]]; then
            sudo apt-get update
            sudo apt-get install -y docker.io docker-compose
        fi
    fi
}

install_nodejs() {
    echo "Installing Node.js..."
    if [[ "$OS" == "linux" ]]; then
        curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
        sudo apt-get install -y nodejs
    fi
}

install_python() {
    echo "Installing Python..."
    if [[ "$OS" == "linux" ]]; then
        sudo apt-get install -y python3 python3-pip python3-venv
    fi
}

main() {
    echo "Starting automated setup..."
    
    if ! command_exists docker; then
        install_docker
    fi
    
    if ! command_exists node; then
        install_nodejs
    fi
    
    if ! command_exists python3; then
        install_python
    fi
    
    echo "Installing Python dependencies..."
    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
    
    echo "Installing Node.js dependencies..."
    npm install
    
    echo "Setup Complete! Run: docker-compose up"
}

main
