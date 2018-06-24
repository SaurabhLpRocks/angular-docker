# FROM johnpapa/angular-cli as angular-built
# Using the above image allows us toskip the angular-cli install

# If you want to build the Angular project inside the docker, then uncomment following sectioin:
FROM node:8.9-alpine as angular-built
WORKDIR /usr/src/app
RUN npm i -g @angular/cli
COPY package.json package.json
RUN npm install --silent
COPY . .
RUN ng build --prod --build-optimizer

FROM nginx:alpine
LABEL author="John Papa"
COPY nginx.conf /etc/nginx/nginx.conf

# Uncomment following if you are building the Angular code inside docker
COPY --from=angular-built /usr/src/app/dist/ng-docker /usr/share/nginx/html

# Comment following line if you are building the Angular app inside docker:
# COPY dist/ng-docker /usr/share/nginx/html
EXPOSE 80 443
CMD [ "nginx", "-g", "daemon off;" ]