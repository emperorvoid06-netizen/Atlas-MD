FROM node:20

WORKDIR /app

COPY package*.json ./

RUN npm ci --omit=dev

COPY . .

EXPOSE 10000

CMD ["npm", "start"]
