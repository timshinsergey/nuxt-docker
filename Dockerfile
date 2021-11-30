FROM node:14.18.1-alpine
WORKDIR /frontend
ADD . .
RUN npm install
RUN npm run build
ENV HOST 0.0.0.0
EXPOSE 3000
CMD [ "npm", "run", "start" ]