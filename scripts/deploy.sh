#! /bin/bash
pwd

ssh master << EOF
git clone https://github.com/JavasMiddi/SFIA-Project-2.git
export SECRET_KEY=${SECRET_KEY} 
export DATABASE_URI=${DATABASE_URI} 

sudo docker rmi -f $(docker images -a -q)
docker stack deploy --compose-file docker-compose.yaml SFIA2

sudo docker service scale SFIA2_service1=3
sudo docker service scale SFIA2_service2=3
sudo docker service scale SFIA2_service3=3
sudo docker service scale SFIA2_service4=3
sudo docker service scale SFIA2_nginx=3
docker stack services SFIA2
EOF
