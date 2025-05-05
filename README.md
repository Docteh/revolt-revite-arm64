# revolt-revite-arm64
Try and publish a docker container

This Dockerfile grabs the docker container created by revolt, and extracts only the web client, and instead of being published as linux/amd64 this container is published as both linux/arm64 and linux/amd64

See: https://github.com/revoltchat/self-hosted as I'm using this container with that
