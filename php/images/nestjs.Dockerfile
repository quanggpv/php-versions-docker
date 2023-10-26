# Use the official Node.js LTS (Long Term Support) image as the base image
FROM node:18.17.0

# Copy package.json and package-lock.json (or yarn.lock) to the container
COPY package*.json ./

RUN apt-get update && apt-get install vim -y

# install nvm

RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.39.0/install.sh | bash

# nvm install {node_version}

# install nodemon

RUN npm install -g nodemon

# Expose the port on which your NestJS application will run (change it to your app's port if needed)
EXPOSE 3000
EXPOSE 3979
EXPOSE 9200
EXPOSE 9201
EXPOSE 9229
EXPOSE 3001


# Start the NestJS application
CMD ["npm", "run", "start:dev"]