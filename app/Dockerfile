FROM node:22-alpine

WORKDIR /app

# Ensure global npm is updated to a patched release (removes vulnerable bundled deps)
RUN npm install -g npm@latest --no-audit --no-fund

COPY package*.json ./

RUN npm ci --omit=dev

COPY server.js .

EXPOSE 3000

CMD ["npm", "start"]