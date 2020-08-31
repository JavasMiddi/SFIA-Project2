#! /bin/bash
pwd

ssh master << EOF
scp /home/javasmiddleton12/SFIA-Project2/docker-compose.yaml /home/jenkins/
export SECRET_KEY=${SECRET_KEY} 
export DATABASE_URI=${DATABASE_URI} 

docker stack deploy --compose-file docker-compose.yaml SFIA2

sudo docker stack services SFIA22
EOF
