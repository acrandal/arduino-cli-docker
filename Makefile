#
# Just a simple Makefile for my docker build
#

build:
	docker build -t acrandal/arduino-cli:latest .

test:
	docker run -it --rm acrandal/arduino-cli:latest

push:
	docker push acrandal/arduino-cli:latest

login:
	docker login
