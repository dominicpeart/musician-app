# Use the official Node.js 14 base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Install nodemon globally
RUN npm install -g nodemon

# Copy the rest of the application code to the container
COPY . .

# Expose the port that the API will listen on
EXPOSE 3000

# Start the Node.js application using nodemon
CMD [ "nodemon", "app.js" ]




