FROM node:12
COPY dist ./dist
COPY package.json ./
EXPOSE 3001
ENV NODE_ENV production 
RUN npm i
CMD [ "npm", "start" ]