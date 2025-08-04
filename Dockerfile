# Stage 1: Build Stage
# We use a specific Node.js version for consistency. 'alpine' is a lightweight version.
FROM node:18-alpine AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
# We copy these first to leverage Docker's layer caching.
# If these files don't change, Docker won't re-run 'npm install'.
COPY package*.json ./

# Install all dependencies, including development dependencies, for potential build steps
RUN npm install

# Copy the rest of the application source code into the container
COPY . .

# ---

# Stage 2: Production Stage
# This stage creates the final, lean image that will be deployed.
FROM node:18-alpine

# Set the working directory for the production image
WORKDIR /app

# Copy only the necessary files from the 'builder' stage
# This includes the installed production dependencies and the source code.
# This prevents development dependencies and other unnecessary files from being in the final image.
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app ./

# The application listens on a port defined by an environment variable.
# We'll expose port 3000 by default, but this can be overridden.
# The .env file in the repo specifies PORT=8000, so you should expose that.
EXPOSE 8000

# Define the command to run the application.
# We use 'node server.js' directly instead of 'nodemon' for production.
# Nodemon is a development tool for auto-restarting the server on file changes.
CMD [ "node", "server.js" ]