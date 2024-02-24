FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Bundle app source
COPY . .

EXPOSE 8080

CMD [ "node", "app.js" ]


# # Use the official Node.js image as base
# FROM node:latest

# # Set the working directory inside the container
# WORKDIR /usr/src/app

# # Copy package.json and yarn.lock files to the working directory
# COPY package.json yarn.lock ./

# # Install dependencies
# RUN yarn install

# # Copy the rest of the application files
# COPY . .

# # Expose the port on which the application will run
# EXPOSE 3000

# # Command to run the application
# CMD ["yarn", "start"]
