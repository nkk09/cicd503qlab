FROM node:22-bullseye-slim

WORKDIR /app

COPY package*.json ./

RUN npm install -g npm@11.13.0 \
 && npm ci --omit=dev

COPY server.js .

EXPOSE 3000

CMD ["npm", "start"]
