FROM node:14.16.1-alpine3.13

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --production

COPY . .

RUN yarn build

CMD ["yarn", "start"]
