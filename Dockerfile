FROM node:18-alpine

WORKDIR /app

COPY *.json ./
RUN npm install

COPY src ./src
RUN npm run build

CMD [ "node", "dist/index.js" ]
