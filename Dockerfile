# Use Node.js 16
FROM node:16

# App runs on port 8080
EXPOSE 8080

# Default secret key in the image
ENV SECRET_KEY="Lv5B4apkpkkP6R1eOzpq"

WORKDIR /donation-socket

# Install npm dependencies
COPY package*.json ./
RUN npm ci --only=production

# Bundle app files
COPY . .

# Run server
CMD [ "npm", "run", "start" ]