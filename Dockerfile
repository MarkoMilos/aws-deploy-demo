# Use a Node.js base image with a specified version
FROM node:19

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the port on which the application will run
EXPOSE 8080

# Specify the command to run the application
CMD [ "npm", "start" ]