#! /bin/bash
pwd
ls

ssh sfia-2-worker << EOF
git clone https://github.com/omris-elda/SFIA-Project-2.git
EOF
ssh sfia-2-worker-1 << EOF
git clone https://github.com/omris-elda/SFIA-Project-2.git
EOF

ssh master << EOF
ls
pwd
whoami
# make sure there's no residual images
sudo docker images
