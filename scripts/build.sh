#! /bin/bash
pwd
whoami
ls
<<<<<<< HEAD
=======
sudo mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
. ~/.bashrc

sudo apt install python3-pip

pip3 install ansible

>>>>>>> jenkins
/home/jenkins/.local/bin/ansible --version
/home/jenkins/.local/bin/ansible-playbook -i inventory.cfg playbook.yaml
docker --version
docker-compose --version

sudo docker images

sudo docker-compose build
sudo docker images
sudo docker system prune -f
<<<<<<< HEAD
sudo docker images
sudo docker login
sudo docker-compose push
=======

sudo docker images
sudo docker login

sudo docker-compose push

>>>>>>> jenkins
