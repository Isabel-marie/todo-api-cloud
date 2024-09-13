# Use the official Node.js 16 image as a parent image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json .

# Install dependencies, including devDependencies if needed for running the app
RUN npm install

# Copy the rest of your application's code
COPY . .

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define the command to run your app using CMD which defines your runtime
CMD ["npm", "start"]