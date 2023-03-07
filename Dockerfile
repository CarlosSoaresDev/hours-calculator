FROM node:16

WORKDIR /usr/src/app
ENV PORT=80

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 80
CMD [ "node", "server.js" ]