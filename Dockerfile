# Use a base image (Change if needed)
FROM node:18-alpine 

# Set the working directory inside the container
WORKDIR /app 

# Copy package.json and package-lock.json first (to leverage Docker cache)
COPY package*.json ./

# Install dependencies
RUN npm install 

# Copy the rest of the application files
COPY . .

# Expose the port your app runs on
EXPOSE 3000  

# Define the startup command
CMD ["node", "server.js"]