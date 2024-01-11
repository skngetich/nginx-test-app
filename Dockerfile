# Use the official Node.js image as a base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire app directory to the container
COPY . .

# Expose the port on which the React app will run
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]

