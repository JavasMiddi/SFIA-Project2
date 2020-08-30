#! /bin/bash
pwd
whoami
ls
sudo mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
. ~/.bashrc

sudo apt install python3-pip

pip3 install ansible

cd ~/SFIA-Project2
ansible-playbook -i inventory/cfg playbook.yaml

