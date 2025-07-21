FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.fv4vi1l.mongodb.net
ENV MONGODB_USERNAME armandsosins91
ENV MONGODB_PASSWORD 6XZEv1hqSxwFWkJb

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]