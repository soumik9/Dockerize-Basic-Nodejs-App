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

# Expose the app on port
EXPOSE 8003

# Start the app
CMD ["yarn", "start"]
# CMD ["yarn", "dev"]