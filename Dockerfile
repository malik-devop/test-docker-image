FROM node:14.15-alpine AS build
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build
FROM nginx:1.18
COPY --from=build /usr/src/app/dist/test-docker-image /usr/share/nginx/html