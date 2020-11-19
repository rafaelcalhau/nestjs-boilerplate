FROM node:14-alpine

# Create app directory
WORKDIR /usr/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json yarn.lock ./

# If you are building your code for production
# RUN npm ci --only=production
RUN npm install --silent

# Bundle app source
# COPY . .

# Expose the port 3000
# EXPOSE 3000 // docker-compose will do it

# Execute the app
# CMD [ "node", "dist/main" ]
CMD [ "npm", "run", "start:dev" ]