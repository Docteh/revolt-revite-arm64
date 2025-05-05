FROM --platform=$BUILDPLATFORM ghcr.io/revoltchat/client:master AS build
# They've only built for linux/amd64
# The goods are in /usr/src/app and is 1.1GB of stuff, but we only want
# the dist, which is about 60mb

FROM node:22-alpine
LABEL org.opencontainers.image.description="Smaller Revite container"

WORKDIR /usr/src/app
COPY package.json package-lock.json .
RUN npm install
COPY --from=build /usr/src/app/scripts/inject.js .
COPY --from=build /usr/src/app/dist dist
EXPOSE 5000
CMD ["npm", "start"]
