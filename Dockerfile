#export environment with all prerequisites for node app installed
FROM node:18-alpine

#define workdir, so install could work properly and copy project files into container
WORKDIR /
COPY . .

#install required dependencies
RUN npm install

#start the application server
CMD ["node", "server.js"]
EXPOSE 80