FROM node:alpine
RUN apt-get update && apt-get upgrade -y
ENV NODE_ENV production
USER node
WORKDIR /home/node
# COPY package.json .
ADD --chown=node:node package.json /home/node
# RUN npm install
RUN npm ci --only=production
COPY . .
EXPOSE 80
CMD [ "npm", "start" ]