#! /bin/bash
mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
. ~/.bashrc
pip3 install --user ansible
ansible-playbook -i ./inventory.cfg ./playbook.yaml

sudo chmod 666 /var/run/docker.sock
docker-compose down --rmi all
docker service create --name registry --publish 4999:5000 registry
docker-compose build
sudo docker images
sudo docker login
sudo docker-compose push
