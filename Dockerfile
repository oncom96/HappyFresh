FROM node:12-alpine

#Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

#Run npm install
RUN npm install

#Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "index.js"]
