#! /bin/bash
pwd
whoami
ls
/home/jenkins/.local/bin/ansible --version
/home/jenkins/.local/bin/ansible-playbook -i inventory.cfg playbook.yaml
docker --version
docker-compose --version

sudo docker images

sudo docker-compose build
sudo docker images
sudo docker system prune -f
sudo docker images
sudo docker login
sudo docker-compose push
