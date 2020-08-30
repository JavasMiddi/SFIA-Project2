#! /bin/bash
pwd
ls
sudo docker stack deploy --compose-file docker-compose.yaml SFIA2
sudo docker stack services SFIA2

sudo docker service scale SFIA2_service1=3
sudo docker service scale SFIA2_service2=3
sudo docker service scale SFIA2_service3=3
sudo docker service scale SFIA2_service4=3
sudo docker service scale SFIA2_nginx=3
sudo docker stack services SFIA2
ls
EOF
