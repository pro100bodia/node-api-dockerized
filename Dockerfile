#export environment with all prerequisites for node app installed
FROM node

#define workdir, so install could work properly and copy project files into container
WORKDIR /project
COPY ./ /project

#install required dependencies
RUN npm install

#start the application server
CMD node server.js