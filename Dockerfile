# Use the official Node.js image as a base image
FROM node:14-alpine as builder

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire app directory to the container
COPY . .

# Build the React app for production with the specified PUBLIC_URL
ARG PUBLIC_URL
RUN PUBLIC_URL=$PUBLIC_URL npm run build

# Expose port 3000
EXPOSE 3000


CMD [ "npm", "run","start:prod" ]
