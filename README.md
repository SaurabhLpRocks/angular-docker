# Angular CLI with Docker

This is an example app created with the Angular CLI that runs with Docker


I ran `ng new myapp` to generate the app. Then added the 4 docker files:

```bash
.dockerignore
docker-compose.yml
docker-compose.debug.yml
Dockerfile
```

## Running

Two options are available. I prefer the docker compose technique

Option 1) You can run docker build and docker run

  ```
  docker build --rm -f Dockerfile -t angular-cli-docker-ootb:latest .
  docker run --rm -d -p 443:443 -p 80:80 angular-cli-docker-ootb:latest
  ```

Option 2) You can run docker compose `docker-compose up -d --build`

## Running docker.componse.debug.yml

Run following command:
```
docker-compose -f docker-compose.dev.yml up -d --build
```
## Debugging Node code with VS Code

1st run docker.compose.debug.yml as stated above, then see below link
https://stackoverflow.com/questions/46500639/how-do-i-use-docker-compose-debug-yml-to-debug-my-node-running-in-docker

# NgDocker

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 6.0.1.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).
