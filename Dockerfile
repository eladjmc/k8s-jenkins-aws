FROM node:16
WORKDIR /app
COPY app/package*.json ./
RUN npm install
COPY . .
EXPOSE 443
CMD [ "node", "server.js" ]