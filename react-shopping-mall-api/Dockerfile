FROM node:16.3

WORKDIR /usr/src/react-shopping-mall-api

COPY ./ ./

RUN npm install

ARG REACT_APP_DATABASE_IP_ADDRESS

ENV REACT_APP_DATABASE_IP_ADDRESS=${REACT_APP_API_IP_ADDRESS}

CMD ["/bin/bash"]

