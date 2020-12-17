# set base image (host OS)
# Using alpine because it's tiny!
FROM alpine:latest

# set the working directory in the container
WORKDIR /code

# Copying amd64 version of arduino-cli into image
COPY arduino-cli /usr/local/bin

# Adding AVR (Uno, Mega, Mini, etc) for speedy CI
# RUN arduino-cli core install arduino:avr

# command to run on container start - just a shell, really
CMD [ "ash" ]

