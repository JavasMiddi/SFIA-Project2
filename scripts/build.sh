#! /bin/bash
pwd
whoami
ls
sudo mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
. ~/.bashrc

sudo apt install python3-pip

sudo pip3 install ansible

ansible-playbook -i ./ansible/inventory.cfg ./ansible/playbook.yaml

