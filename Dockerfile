FROM node:12-alpine

#Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

#Run npm install
RUN npm -i

#Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "index.js"]