# multi-stage build
FROM 20-alpine3.22 AS builder
WORKDIR /opt/server
COPY package.json .
COPY *.js .
RUN npm install

FROM 20-alpine3.22 
RUN addgroup -S roboshop && adduser -S roboshop -G roboshop
ENV REDIS_URL="redis://redis:6379"  \
    MONGO_URL="mongodb://mongodb:27017/users" \
    MONGO=true
WORKDIR /opt/server
USER roboshop
COPY --from=builder /opt/server /opt/server
CMD ["node","server.js"]




# FROM node:20
# WORKDIR /opt/server
# COPY package.json .
# COPY *.js  .
# RUN npm install
# ENV REDIS_URL="redis://redis:6379"  \
#     MONGO_URL="mongodb://mongodb:27017/users" 
# CMD ["node","server.js"]