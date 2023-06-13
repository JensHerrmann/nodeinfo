FROM node:alpine
USER node
WORKDIR /home/node
ENV NODE_ENV production
ADD --chown=node:node package*.json /home/node
RUN npm install --only=production
ADD --chown=node:node . /home/node
EXPOSE 80
CMD [ "node", "index.js" ]
