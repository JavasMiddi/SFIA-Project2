#! /bin/bash
pwd
ls

export TEST_SECRET_KEY=${TEST_SECRET_KEY}
export TEST_DB_URI=${TEST_DB_URI} 

cd service1
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
