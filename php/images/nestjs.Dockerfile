# Use the official Node.js LTS (Long Term Support) image as the base image
FROM node:18.17.0

# Copy package.json and package-lock.json (or yarn.lock) to the container
COPY package*.json ./

RUN apt-get update && apt-get install vim -y

# Expose the port on which your NestJS application will run (change it to your app's port if needed)
EXPOSE 3000

# Start the NestJS application
CMD ["npm", "run", "start:dev"]