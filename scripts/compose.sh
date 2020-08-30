#! /bin/bash
pwd
whoami

sudo usermod -aG docker $(whoami)
sudo apt update
sudo apt install -y curl jq python3 python3-pip

version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-co
mpose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
sudo chown jenkins /var/run/docker.sock
export MYSQL_ROOT_PASSWORD=root
docker service create --name registry —publish 4999:5000 registry
docker-compose push
sudo docker-compose up -d 
