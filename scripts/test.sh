#! /bin/bash
pwd
ls

<<<<<<< HEAD
cd ~/SFIA-Project2/service1
=======

cd ~/.SFIA-Project2/service1
>>>>>>> jenkins
pip3 install -r requirements.txt
python3 -m pytest --cov app --cov-report term-missing
cd ..

cd service2
pip3 install -r requirements.txt
python3 -m pytest --cov app --cov-report term-missing
cd ..

cd service3
pip3 install -r requirements.txt
python3 -m pytest --cov app --cov-report term-missing
cd ..

cd service4
pip3 install -r requirements.txt
python3 -m pytest --cov app --cov-report term-missing
cd ..
