# Use the official Node.js 18 image as the base image
FROM node:22

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose port 8081
EXPOSE 8081

# Command to run your application
CMD ["node", "app.js"]