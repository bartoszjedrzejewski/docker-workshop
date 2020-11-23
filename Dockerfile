# pull official base image
FROM python:3.8.6-slim-buster

#create user
RUN adduser --uid 1000 --disabled-password --gecos '' appuser
USER appuser

#set output to unbuffered for logs to work
ENV PYTHONUNBUFFERED=1

# set work directory
WORKDIR /usr/src/app

# copy all files from base directory
COPY --chown=1000:1000 . .

# document which port containers need
EXPOSE 8080

#setup entrypoint for it to be run at container startup
ENTRYPOINT ["/bin/bash", "entrypoint.sh"]

