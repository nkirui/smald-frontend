# Smald

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 16.1.6.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The application will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via a platform of your choice. To use this command, you need to first add a package that implements end-to-end testing capabilities.

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.io/cli) page.

## ARGOCD STEPS

- Here is the [Manifest path](/k8s/kustomize-smald)

## login to argocd CLI

`
argocd login <IP or FQDN>
`

## Add repo

```-
    argocd app add https://github.com/nkirui/smald-frontend \
    --type git \
    --name smald \
    --project smald \
    --username nkirui \
    --password gh**********
```

## Create project

`argocd proj create --file $(pwd)/k8s/kustomize-smald/argo-project.yaml`

## create apps

`argocd app create --file $(pwd)/k8s/kustomize-smald/argo-dev.yaml`

## < TODO 1 >

`argocd app create --file $(pwd)/k8s/kustomize-smald/argo-sbox.yaml`\
`argocd app create --file $(pwd)/k8s/kustomize-smald/argo-prod.yaml`

## < TODO 2 >

- Create a bash script to accomplish everything at ago.
- Add CI/CD for dev,sbox,and prod
