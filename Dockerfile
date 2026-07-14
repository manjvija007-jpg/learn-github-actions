# Use official Node.js image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy rest of the application code
COPY . .

# Expose port (if your app runs on 3000)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
