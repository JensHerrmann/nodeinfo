FROM node:alpine
RUN apk add --update nodejs npm
# ENV NODE_ENV production
USER node
WORKDIR /home/node
# COPY package.json .
ADD --chown=node:node package.json /home/node
RUN npm install
# RUN npm ci --only=production --force
COPY . .
EXPOSE 80
CMD [ "npm", "start" ]
