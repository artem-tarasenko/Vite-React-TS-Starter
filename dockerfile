FROM node:alpine3.16

WORKDIR /app

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ADD . .

RUN npm install

CMD ["npm", "run", "dev"]