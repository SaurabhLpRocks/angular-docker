# Angular CLI with Docker

This is an example app created with the Angular CLI that runs with Docker

## Running

There are two compose files for two environments: Production and Development

### Running in prod mode docker.compose.yml
`docker-compose up -d --build`

### Running in dev mode docker.compose.dev.yml
`
docker-compose -f docker-compose.dev.yml up -d --build
`
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
