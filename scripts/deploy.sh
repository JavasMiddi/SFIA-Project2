#! /bin/bash
pwd

ssh master << EOF
git clone https://github.com/omris-elda/SFIA-Project-2.git
export SECRET_KEY=${SECRET_KEY} 
export DATABASE_URI=${DATABASE_URI} 

sudo docker rmi -f $(docker images -a -q)
docker stack deploy --compose-file docker-compose.yaml SFIA2

docker stack services SFIA2
EOF
