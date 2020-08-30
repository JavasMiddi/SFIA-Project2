#! /bin/bash
pwd
ls

ssh sfia-2-worker << EOF
git clone https://github.com/JavasMiddi/SFIA-Project2.git
EOF
ssh sfia-2-worker-1 << EOF
git clone https://github.com/JavasMiddi/SFIA-Project2.git
EOF

ssh master << EOF
ls
pwd
whoami
sudo docker images
git clone https://github.com/JavasMiddi/SFIA-Project2.git
ls
cd SFIA-Project2
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
