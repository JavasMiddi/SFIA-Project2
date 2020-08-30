#! /bin/bash
pwd

cd service1
sudo pip3 install -r requirements.txt
/home/jenkins/.local/bin/pytest
cd ..

cd service2
sudo pip3 install -r requirements.txt
/home/jenkins/.local/bin/pytest
cd ..

cd service3
sudo pip3 install -r requirements.txt
/home/jenkins/.local/bin/pytest
cd ..

cd service4
sudo pip3 install -r requirements.txt
/home/jenkins/.local/bin/pytest
cd ..
