# Use an official Node.js runtime as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose a port (optional, only if your application needs to listen on a specific port)
EXPOSE 3000

# Define the command to run your application
CMD [ "node", "index.js" ]
