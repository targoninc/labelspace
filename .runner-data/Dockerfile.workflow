FROM node:lts

RUN apt-get update && apt-get install -y docker.io && rm -rf /var/lib/apt/lists/*
