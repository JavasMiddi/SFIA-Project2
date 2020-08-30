#! /bin/bash
mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
. ~/.bashrc
pip3 install --user ansible
ansible-playbook -i ./inventory.cfg ./playbook.yaml

sudo chmod 666 /var/run/docker.sock
docker-compose down --rmi all
docker-compose build
sudo docker images
export DOCKER_USERNAME=${DOCKER_USERNAME}
export DOCKER_PASSWORD=${DOCKER_PASSWORD}
sudo docker login
sudo docker-compose push
