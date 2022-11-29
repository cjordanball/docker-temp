FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.ntrwp.mongodb.net
ENV MONGODB_USERNAME cjordanball@ballwebdev.com
ENV MONGODB_PASSWORD h7O50>boo2GiN

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]