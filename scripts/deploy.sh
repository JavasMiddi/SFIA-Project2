#! /bin/bash
pwd

ssh sfia-2-worker << EOF
git clone https://github.com/JavasMiddi/SFIA-Project2.git
EOF

ssh sfia-2-worker << EOF
git clone https://github.com/JavasMiddi/SFIA-Project2.git
EOF

ssh master << EOF
scp /home/javasmiddleton12/SFIA-Project2/docker-compose.yaml /home/jenkins/
export SECRET_KEY=${SECRET_KEY} 
export DATABASE_URI=${DATABASE_URI} 

docker stack deploy --compose-file docker-compose.yaml SFIA2
EOF
