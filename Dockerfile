FROM node:current-alpine3.14 AS builder
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
COPY . ./
CMD ["npm", "build"]

FROM nginx:mainline-alpine  
COPY --from=builder  /app/build /usr/share/nginx/html
