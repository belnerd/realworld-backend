FROM node:14-alpine
#FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000
# ENV MONGODB_URI=mongo-container
# ENV NODE_ENV=production

CMD [ "node", "app.js"] 