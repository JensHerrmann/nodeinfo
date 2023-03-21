FROM node:alpine
USER node
WORKDIR /home/node
# COPY package.json .
ADD --chown=node:node package.json /home/node
RUN npm install
COPY . .
EXPOSE 80
CMD [ "npm", "start" ]