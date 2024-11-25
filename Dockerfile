FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV SECRET_WORD="my_secret_word"
EXPOSE 3000
CMD ["npm", "start"]