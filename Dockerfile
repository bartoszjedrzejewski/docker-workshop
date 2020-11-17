# pull official base image
FROM python:3.8.6-slim-buster

#create user
RUN adduser --disabled-password --gecos '' django
USER django

# set work directory
WORKDIR /usr/src/app

# copy all files from base directory
COPY . .

#setup entrypoint for it to be run at container startup
ENTRYPOINT ["/bin/bash", "entrypoint.sh"]

