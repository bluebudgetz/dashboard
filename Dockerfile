FROM node:10-alpine AS build
WORKDIR /app/
COPY ./package.json ./package-lock.json ./
RUN npm ci
COPY e2e ./e2e/
COPY src ./src/
COPY angular.json browserslist karma.conf.js tsconfig.app.json tsconfig.json tsconfig.spec.json tslint.json ./
RUN npm run lint
RUN npm run test
RUN npm run build --prod

FROM nginx:1.15.10-alpine
COPY --from=build /app/dist/dashboard /usr/share/nginx/html
COPY ./nginx/default.conf /etc/nginx/conf.d/
