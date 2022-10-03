FROM node:18-alpine

LABEL maintainer="Marvin Witt <business@nurmarv.in>"
LABEL version="1.0.0"
LABEL description="A simple docker image to host a specific version of Discord's web client."

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

RUN npm run build

EXPOSE 3333
ENTRYPOINT [ "npm", "start" ]