FROM node:22-alpine
WORKDIR /app
COPY package.json .
RUN npm install --production
COPY . .
# Application listens on port 3000 (see server.js)
EXPOSE 3000
CMD ["npm", "start"]