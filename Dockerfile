FROM node:20-alpine

WORKDIR /usr/src/weatherping

COPY package*.json ./
RUN npm install --only=production

COPY app.js ./

EXPOSE 5000

CMD ["npm", "start"]
