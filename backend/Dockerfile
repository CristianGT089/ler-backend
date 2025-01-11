# Use Node.js base image
FROM node:20

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy source files
COPY ./src ./src

# Expose the app port
EXPOSE 3000

# Run the application
CMD ["node", "src/index.js"]
