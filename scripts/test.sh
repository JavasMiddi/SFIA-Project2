#! /bin/bash
pwd
ls

cd service2
pytest --cov application --cov-report term-missing
cd ..

cd service2
pytest --cov application --cov-report term-missing
cd ..

cd service3
pytest --cov application --cov-report term-missing
cd ..

cd service4
pytest --cov application --cov-report term-missing
cd ..
