
# Deploy self-hosted github action runner on ECS

In this repository, I deployed runners to ECS cluster using shell scripting, docker, aws cli, ecs-cli. Here is the steps how I did it




## Acknowledgements

 - [Runner repository test](https://github.com/pvmtriet232/snippetbox/)
 - [Runner image I used](https://hub.docker.com/r/summerwind/actions-runner)

 


## License

[MIT](https://choosealicense.com/licenses/mit/)


## Badges

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
[![AGPL License](https://img.shields.io/badge/license-AGPL-blue.svg)](http://www.gnu.org/licenses/agpl-3.0)


## Authors

- [@pvmtriet232](https://www.github.com/pvmtriet232)


## Step 1: build and test image

-   Pull this [images](https://hub.docker.com/r/summerwind/actions-runner) in Docker,
-   Install github action on it
-   Run a demo action on this container to makesure it works
-   Push image to docker.io
## Step 2: install and configure ecs-cli
-   Install [ecs-cli](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI.html) 
-   Run configure.sh with your credentials
## Step 3: create ECS cluster and compose docker-compose.yml to ECS cluster

-   create cluster with create-cluster specified in Makefile:
```bash
make create-cluster
```
-   run image in ECS cluster with ecs-compose-up:
```bash
make ecs-compose-up
```
-   clean up.
