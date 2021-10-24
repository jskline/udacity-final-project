
install:
	pip install -r ./requirements.txt

install-dev: HADO_PATH=${VIRTUAL_ENV}/bin/hadolint
install-dev:
	pip install -r ./requirements_dev.txt
	# Install hadolint
	if [ ! -e ${HADO_PATH} ]; then wget -O ${HADO_PATH} https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64; fi;
	chmod +x ${HADO_PATH}

test:
	pytest

lint:
	hadolint Dockerfile
	flake8 src
	mypy src

all: install install-dev lint test

docker:
	docker build -t jskline/simpleapi .

run: export FLASK_ENV=development
run: export FLASK_APP=src/simpleapi/api
run:
	flask run --host=0.0.0.0 --port=5000

run-docker:
	docker run -d -p 5000:5000 jskline/simpleapi:latest
