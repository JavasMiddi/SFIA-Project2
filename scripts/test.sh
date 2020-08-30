#!/bin/bash
pip3 install -r ./requirements.txt

cd service1
/home/jenkins/.local/bin/pytest

cd ../service2
/home/jenkins/.local/bin/pytest

cd ../service3
/home/jenkins/.local/bin/pytest

cd ../service4
/home/jenkins/.local/bin/pytest
