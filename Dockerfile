FROM node:slim

# Create app directory
WORKDIR /app

# Copy package.json and yarn.lock
COPY package.json yarn.lock .

# Install yarn
RUN npm install yarn

# Install app dependencies
RUN yarn install

# Copy
COPY . .

# Set environment variables
ENV NODE_ENV=production
ENV PORT=8003

# Expose the app on port
# EXPOSE 8003
EXPOSE $PORT

# Start the app with nodemon
CMD ["yarn", "dev"]