. /home/jenkins/.profile

cd SFIA-Project2

sudo chmod 666 /var/run/docker.sock

docker stack deploy --compose-file docker-compose.yaml SFIA
