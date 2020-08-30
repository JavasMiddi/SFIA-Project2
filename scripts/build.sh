#! /bin/bash
pwd
whoami
ls
sudo mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
. ~/.bashrc

sudo apt install python3-pip

sudo pip3 install ansible

ansible-playbook -i ./inventory.cfg ./playbook.yaml

sudo apt update
sudo usermod -aG docker $(whoami)
sudo apt update
sudo apt install -y curl jq python3 python3-pip
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo docker-compose build
sudo docker-compose push
