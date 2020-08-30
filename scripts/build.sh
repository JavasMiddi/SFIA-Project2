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
sudo docker-compose build
sudo docker images
sudo docker system prune -f

sudo docker images
sudo docker login
sudo docker-compose push
