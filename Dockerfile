# syntax=docker/dockerfile:1
FROM node:16-alpine

# set a directory for the application
WORKDIR /app

# copy all contents of your folder to the application directory
COPY . .

# get all dependencies mentioned in package.json
RUN yarn install

# run development environment
CMD ["yarn", "dev"]

# expose our application to port 3000
EXPOSE 3000