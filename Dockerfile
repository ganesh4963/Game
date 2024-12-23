# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . /app

# Install http-server to serve static files
RUN npm install -g http-server

# Expose the port the app runs on
EXPOSE 8080

# Command to start the application
CMD ["http-server", "-p", "8080"]
