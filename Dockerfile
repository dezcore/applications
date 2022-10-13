# syntax=docker/dockerfile:1
FROM node:lts-alpine as base
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

FROM base as test
EXPOSE 80
RUN npm run test

FROM base as dev
EXPOSE 80
CMD ["npm", "run", "serve"]

FROM base as prod
RUN npm run build

#production stage
FROM nginx:stable-alpine as production-stage
COPY --from=prod /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
