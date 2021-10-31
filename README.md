[![CircleCI](https://circleci.com/gh/jskline/udacity-final-project/tree/main.svg?style=svg)](https://circleci.com/gh/jskline/udacity-final-project/tree/main)

# udacity-final-project
Final Project for Udacity AWS Cloud DevOps NanoDegree

## Setup

    python3.8 -m venv venv
    . venv/bin/actiate
    pip install -r ./requirements.txt
    pip install -r ./requirements_dev.txt

## Test

Run mypy, flake8, and pytest

    make all

## Build

    make docker

## Run

Run the Flask API locally

    make run
    make run-docker

## CI Setup

Add circleCI project environment variables with your AWS credentials:

    AWS_ACCESS_KEY_ID
    AWS_DEFAULT_REGION
    AWS_SECRET_ACCESS_KEY

## Cloudformation

Sources

    https://docs.aws.amazon.com/eks/latest/userguide/eks-optimized-ami.html
