#! /bin/bash
pwd
ls

cd service1
pytest --cov app --cov-report term-missing
cd ..

cd service2
pytest --cov app --cov-report term-missing
cd ..

cd service3
pytest --cov app --cov-report term-missing
cd ..

cd service4
pytest --cov app --cov-report term-missing
cd ..
