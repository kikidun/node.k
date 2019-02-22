# pick a base image
FROM node:alpine

#add packages and copy files for cache
WORKDIR /usr/app
COPY ./package.json ./

#set up node env, pre-reqs exist already
RUN npm install

#update the image withthe latest index file
COPY /home/kieran/Documents/webapp/index.js ./

#start container
CMD ["npm","start"]
