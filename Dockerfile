# Use an official Node.js image as the base image
FROM node:14

# Set the working directory to 'cochrane_kwinton_site'
WORKDIR /cochrane_kwinton_site

# Copy the package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the application to the working directory
COPY . .

# Expose the desired port (7775)
EXPOSE 7775

# Start the React app on port 7775
CMD ["npm", "start"]