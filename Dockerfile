FROM node:12
COPY dist ./dist
COPY package.json ./
EXPOSE 3001
RUN npm i
CMD [ "npm", "start" ]