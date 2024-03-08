### STAGE 1: Build ###

FROM node:20.9.0-alpine as build-stage

WORKDIR /app-src

ADD . /app-src

RUN mkdir dist && chmod 775 dist

RUN npm i
RUN npm run build

### STAGE 2: Setup & Run ###

FROM node:20.9.0-alpine

WORKDIR /app

# Copy files from build stage
COPY --from=build-stage /app-src/dist /app/dist

# Copy server entrypoint package files
COPY ./server.js /app/server.js
COPY ./package.json /app/package.json
COPY ./package-lock.json /app/package-lock.json

# Install server deps
RUN npm i --omit=dev

CMD ["node", "server.js"]