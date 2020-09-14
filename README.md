# docker-nginx-express

[![License][license-badge]][license-url]

> A playground for Docker with Nginx and Express.

![Preview](preview/docker-nginx-express.gif)

# Development

* Cloning the repo

```bash
$ git clone https://github.com/robertoachar/docker-nginx-express.git
```

* Installing dependencies

```bash
$ npm install
```

# Docker

* Building an image

```bash
$ docker-compose build
```

* Running containers

```bash
$ docker-compose up
```

* Stopping  containers

```bash
$ docker-compose down
```

# Author

[Roberto Achar](https://twitter.com/robertoachar)

# License

[MIT](https://github.com/robertoachar/docker-nginx-express/blob/master/LICENSE)

[license-badge]: https://img.shields.io/github/license/robertoachar/docker-nginx-express.svg
[license-url]: https://opensource.org/licenses/MIT

FROM node:latest

LABEL maintainer="robertoachar@gmail.com"
WORKDIR /usr/src/app
VOLUME [ "/usr/src/app" ]
RUN npm install -g nodemon
ENV NODE_ENV=development
ENV PORT=3000

EXPOSE 3000

CMD [ "nodemon", "-L", "src/index.js" ]
