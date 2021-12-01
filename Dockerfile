FROM node:14.18.1-alpine
WORKDIR /frontend
ADD *.json ./
RUN npm install
ADD . .
RUN npm run build