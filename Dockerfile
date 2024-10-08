# Use the official Node.js image as the base image
FROM node:19.9.0

# Set the working directory inside the container
# Fix: Set the working directory to the 'Backend' folder within the container
WORKDIR /app/Backend

# Copy the package.json and package-lock.json files from the 'Backend' directory
COPY Backend/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the 'Backend' directory contents to the container
# Fix: Ensure that all files including 'src/App.js' are copied to the correct path
COPY Backend/ ./

# Check if 'src/App.js' exists to prevent runtime errors
RUN test -f ./src/App.js || (echo "Error: src/App.js not found" && exit 1)

# Expose the port the app will run on
EXPOSE 3000

# Run the application using the correct entry point
CMD [ "node", "src/App.js" ]
