FROM node:14-alpine

ARG BUILD_NAME

ENV NAME=$BUILD_NAME

# ENV name=${NAME}

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "src/app.js" ]