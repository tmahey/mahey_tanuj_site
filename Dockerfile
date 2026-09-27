FROM node:20-alpine

# Working directory matching your name requirement
WORKDIR /mahey_tanuj_site

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy project files
COPY . .

# Expose the container's internal React port
EXPOSE 3000

# Force React to bind to all network interfaces inside Docker
ENV HOST=0.0.0.0

# Start the development server
CMD ["npm", "start"]