FROM node:14

WORKDIR /app

COPY package.json /app
RUN npm install

COPY . /app
RUN chmod +x /app/entrypoint.sh


ENTRYPOINT ["sh", "/entrypoint.sh"]
