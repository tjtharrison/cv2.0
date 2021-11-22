FROM node:14.18.1-alpine
COPY ./ /app/
RUN cd /app && npm install
WORKDIR /app