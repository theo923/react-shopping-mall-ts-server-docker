FROM node:16.3

WORKDIR /usr/src/react-shopping-mall

COPY package*.json ./
 
RUN npm install
 
COPY . .

ARG REACT_APP_API_IP_ADDRESS

ENV REACT_APP_API_IP_ADDRESS=${REACT_APP_API_IP_ADDRESS}

EXPOSE 3000
 
CMD [ "npm", "start" ]