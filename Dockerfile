# Use Node.js LTS as base image
FROM node:lts-buster

# Clone the repository
RUN git clone https://github.com/SuhailTechInfo/suhailmd-2.0 /home/suhail

# Set ownership for the 'node' user
RUN chown -R node:node /home/suhail

# Switch to the 'node' user
USER node

# Set the working directory
WORKDIR /home/suhail

# Copy the server.js file (background webpage script)
COPY server.js .

# Install dependencies
RUN npm install

# Expose the port
EXPOSE 8000

# Start both server.js and the main application
CMD ["sh", "-c", "node server.js & npm start"]
