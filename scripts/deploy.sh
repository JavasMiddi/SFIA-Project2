#! /bin/bash
pwd

ssh manager << EOF
scp /home/javasmiddleton12/SFIA-Project2/docker-compose.yaml /home/jenkins/
export SECRET_KEY=${SECRET_KEY} 
export DATABASE_URI=${DATABASE_URI} 

sudo docker rmi -f $(docker images -a -q)
docker stack deploy --compose-file docker-compose.yaml SFIA2

docker service scale SFIA2_service1=3 
docker service scale SFIA2_service2=3
docker service scale SFIA2_service3=3
docker service scale SFIA2_service4=3
docker service scale SFIA2_nginx=3

docker stack services SFIA2
EOF
