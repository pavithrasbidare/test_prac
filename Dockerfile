FROM node:14

WORKDIR /app

COPY package.json /app
RUN npm install

COPY . /app

# Ensure the entrypoint script is executable
RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["sh", "/app/entrypoint.sh"]
