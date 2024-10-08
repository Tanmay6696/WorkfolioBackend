FROM node:19
WORKDIR /app
COPY WorkfolioBackend/Backend/package*.json ./ 
RUN npm install 
COPY . .
EXPOSE 3000
CMD [ "node", "WorkfolioBackend/Backend/src/App.js" ]
