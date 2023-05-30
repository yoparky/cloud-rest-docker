FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
ENV PORT=8000
ENV GOOGLE_APPLICATION_CREDENTIALS='./a8-docker-388203-1680a7e4e2b3.json'
EXPOSE ${PORT}
CMD ["npm", "start"]