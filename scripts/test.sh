#! /bin/bash
pwd

docker exec -it sfia2-project/service1_1 bash
python3 create.py
exit

export DATABASE_URI=mysql+pymysql://root:root@localhost:3306/fortune
export TEST_DB_URI=mysql+pymysql://root:root@localhost:3306/test

cd service1
python3 -m pytest --cov application --cov-report term-missing 
cd ..

cd service2
python3 -m pytest --cov application --cov-report term-missing 
cd ..

cd service3
python3 -m pytest --cov application --cov-report term-missing
cd ..
