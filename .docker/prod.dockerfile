FROM node:latest as angular-built
WORKDIR /usr/src/app
RUN npm i -g @angular/cli
COPY package.json package.json
COPY package-lock.json package-lock.json
RUN npm install --silent
#First dot means copy everything from build context (set in docker compose file as the root folder) and the second dot means copy to the root of this container
COPY . .
RUN ng build --prod --build-optimizer

FROM nginx:alpine
LABEL author="Saurabh Palatkar"
COPY nginx.conf /etc/nginx/nginx.conf

COPY --from=angular-built /usr/src/app/dist/ng-docker /usr/share/nginx/html

EXPOSE 80 443
CMD [ "nginx", "-g", "daemon off;" ]