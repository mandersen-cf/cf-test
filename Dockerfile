FROM node:8

WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm i --only=production

# Copy source files
COPY . .

EXPOSE 3000
CMD ["npm", "start"]