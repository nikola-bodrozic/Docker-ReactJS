# React & Docker

Create images and containers and push to hub.docker.com registry

## Development Build

`docker build -t reactapp:1.0 .`

`docker run -p 3000:3000 --env REACT_APP_BASE_URL=localhost --name react-app reactapp:1.0`

`docker logs -f YOUR_CONTAINER_SHA`

## Prod build & push to registry

Create empty private image repo **DOCKER_HUB_USERNAME/REPO_NAME**

The repo should be visible in browser at <https://hub.docker.com/repository/docker/DOCKER_HUB_USERNAME/REPO_NAME>

For production you need to set env variable in Dockerfile-prod not in docker run

`docker build -t DOCKER_HUB_USERNAME/REPO_NAME:1.0 -f Dockerfile-prod .`

`docker run -d -p 80:80 --name react-app-prod DOCKER_HUB_USERNAME/REPO_NAME:1.0`

push to registry

```sh
docker login
docker push DOCKER_HUB_USERNAME/REPO_NAME:1.0
```
