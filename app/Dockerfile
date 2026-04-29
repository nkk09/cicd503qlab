FROM node:24-bullseye-slim

WORKDIR /app

COPY package*.json ./

RUN npm ci --omit=dev \
 && rm -rf /usr/local/lib/node_modules/npm \
 && rm -f /usr/local/bin/npm /usr/local/bin/npx

COPY server.js .

EXPOSE 3000

CMD ["node", "server.js"]
