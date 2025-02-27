# Use Node.js base image
FROM node:18-alpine

# Set working directory 
WORKDIR /app

# COPY package.json and install dependencies
COPY package.json .
RUN npm install

# Copy app file
COPY . .

# Expose Port
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]