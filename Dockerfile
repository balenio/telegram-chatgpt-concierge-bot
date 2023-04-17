FROM node:lts-slim

WORKDIR /app
COPY . .

RUN apt -y update && apt -y install ffmpeg

RUN npm install

CMD [ "npm", "start" ]