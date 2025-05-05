# revolt-revite-arm64
Publish a docker image for revolt's revite interface that is multiplatform

This Dockerfile grabs the docker container created by revolt, and extracts only the web client, and instead of being published as linux/amd64 this container is published as both linux/arm64 and linux/amd64

See: https://github.com/revoltchat/self-hosted as I'm using this container with that

```
docker pull ghcr.io/docteh/revolt-revite-arm64:main
```

or specify `ghcr.io/docteh/revolt-revite-arm64:main` as an image in a compose.yml

```
ghcr.io/docteh/revolt-revite-arm64:main
```
