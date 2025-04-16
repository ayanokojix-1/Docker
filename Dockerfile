# Use Node.js LTS as base image
FROM quay.io/ayanokojix2306/kojixsophia:latest

# Clone the repository
RUN git clone https://github.com/A-Y-A-N-O-K-O-J-I/SOPHIA-MD /home/suhail

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


# Start both server.js and the main application
CMD ["sh", "-c", "node server.js & npm start"]
