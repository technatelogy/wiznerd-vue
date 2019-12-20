# Init the node image .
FROM node:10.15-slim

# Do things as the root user.
USER root

# Install some useful stuff.
RUN apt update
RUN apt install procps openssh-client -y

# Install required packages for Cypress
RUN apt install xvfb libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 -y

# Install Git and jq
RUN apt install git jq -y

# Update npm.
RUN npm install --global npm

# Install node packages.
RUN npm install --global firebase-tools @vue/cli

# Install bit.
RUN npm install --global bit-bin

# Default run command.
WORKDIR /var/www/client
CMD [ "node" ]
# CMD
