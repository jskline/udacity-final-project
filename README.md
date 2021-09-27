[![CircleCI](https://circleci.com/gh/jskline/udacity-final-project/tree/master.svg?style=svg)](https://circleci.com/gh/jskline/udacity-final-project/tree/master)

# udacity-final-project
Final Project for Udacity AWS Cloud DevOps NanoDegree

Setup

    python3.8 -m venv venv
    . venv/bin/actiate
    pip install -r ./requirements.txt
    pip install -r ./requirements_dev.txt

Test

    mypy src
    flake8 src
    pytest

Run

    . venv/bin/activate
    python3.8 api.py