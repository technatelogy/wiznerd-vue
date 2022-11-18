# Init the node image .
FROM node:18.12-slim

# Do things as the root user.
USER root

# Install some useful stuff. node-gyp needs build-essential and python.
RUN apt update
RUN apt install procps openssh-client git jq build-essential python -y

# Install required packages for Cypress
RUN apt install xvfb libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 -y

# Update npm.
# Skip updating npm for now.
#RUN npm install --global npm

# Install firebase-tools.
RUN npm install --global firebase-tools @vue/cli bit-bin

# Default run command.
WORKDIR /var/www/client
CMD [ "node" ]
# CMD
