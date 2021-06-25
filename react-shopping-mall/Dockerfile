FROM node:16.3

WORKDIR /usr/src/react-shopping-mall

COPY package*.json ./
 
RUN npm install
 
COPY . .
 
EXPOSE 3000
 
CMD [ "npm", "start" ]