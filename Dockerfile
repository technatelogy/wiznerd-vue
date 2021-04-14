# Init the node image .
FROM node:14.16-slim

# Do things as the root user.
USER root

# Install some useful stuff. node-gyp needs build-essential
RUN apt update
RUN apt install procps openssh-client git jq build-essential -y

# Install required packages for Cypress
RUN apt install xvfb libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 -y

# Update npm.
RUN npm install --global npm

# Install firebase-tools.
RUN npm install --global firebase-tools @vue/cli bit-bin

# Default run command.
WORKDIR /var/www/client
CMD [ "node" ]
# CMD
