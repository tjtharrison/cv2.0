FROM node
COPY ./ /app/
RUN cd /app && npm install
WORKDIR /app