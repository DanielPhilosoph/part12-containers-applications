FROM node:16

USER node

WORKDIR /usr/src/app

COPY . .

RUN npm ci --only-production

ENV DEBUG=express:*

CMD npm start