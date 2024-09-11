FROM node:21-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build --legacy-peer-deps

EXPOSE 3000

CMD [ "npm", "start" ]
