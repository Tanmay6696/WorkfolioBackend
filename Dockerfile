FROM node:19
WORKDIR /app/WorkfolioBackend/Backend
COPY WorkfolioBackend/Backend/package*.json ./
RUN npm install 
COPY . .
EXPOSE 3000
CMD [ "node", "src/App.js" ]
