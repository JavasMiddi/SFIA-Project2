#!/bin/bash
if [docker --version == False]; then
    curl https://get.docker.com | sudo bash
    sudo usermod -aG docker $(whoami)
    sudo apt update
    sudo apt install -y curl jq python3 python3-pip
    version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
    sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi
pip3 install pytest
