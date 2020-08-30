#! /bin/bash
pwd

cd service1
sudo pip3 install -r requirements.txt
python3 -m pytest --cov application --cov-report term-missing 
cd ..

cd service2
python3 -m pytest --cov application --cov-report term-missing 
cd ..

