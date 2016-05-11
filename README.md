# docker-adminer

| [![Build Status](https://travis-ci.org/activatedgeek/docker-adminer.svg?branch=master)](https://travis-ci.org/activatedgeek/docker-adminer) | [![](https://imagelayers.io/badge/activatedgeek/adminer:latest.svg)](https://imagelayers.io/?images=activatedgeek/adminer:latest 'Get your own badge on imagelayers.io') |
|:-:|:-:|

An Alpine-based docker image to run the lightweight `PHPMyAdmin` alternative called `Adminer`.
Learn more about Adminer [here](https://www.adminer.org).

## Images

* `latest`, `0.2`, `0.2.0` ([Dockerfile](./))
* `0.1`, `0.1.2`

## Usage

Pull image from Docker hub as:
```
$ docker pull activatedgeek/adminer
```

This will pull the latest tag by default.

To run the container,
```
$ docker run -d -p 9090:80 \
  --name test-adminer \
  activatedgeek/adminer:latest
```

If you navigate to `http://$DOCKER_HOST:9090`, you should see the `Adminer` login page.

## Build

To build the image from source,
```
$ make latest
```
