FROM node:18-alpine

WORKDIR /usr/src/app

COPY package.json.lock ./

RUN yarn 

COPY . .

RUN yarn prisma generate

RUN yarn build

CMD [ "node", "dist/main.js" ]

