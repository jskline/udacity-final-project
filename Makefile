
install:
	pip install -r ./requirements.txt

install-dev:
	pip install -r ./requirements_dev.txt
	# Install hadolint
	wget -O ${VIRTUAL_ENV}/bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
	chmod +x ${VIRTUAL_ENV}/bin/hadolint

test:
	pytest

lint:
	hadolint Dockerfile
	flake8 src

all: install install-dev lint test
