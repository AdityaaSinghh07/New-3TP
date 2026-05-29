FROM node:18

WORKDIR /app
COPY . .

RUN npm install express pm2 -g

EXPOSE 3000

CMD ["pm2-runtime", "ecosystem.config.js"]
