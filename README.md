# README - Scrapy Platform Project

This repository contains the Dockerfile and docker-compose for setting up and deploying Scrapy Platform

## Docker Build

Use the following command to build the Docker image:

```bash
docker build -t scrapydweb:latest https://github.com/bardusco/scrapydweb-docker.git\#master
```

## Docker Run

To run the Docker container, use the commands below:

Run the background-daemon for Scrapyd

```bash
$ docker-compose up -d scrapyd
```

Run the background-daemon for Scrapydweb

```bash
$ docker-compose up -d scrapydweb
```

### Environment Variables

- `USERNAME`: Basic auth username, default: admin
- `PASSWORD`: Basic auth password, default: admin
- `SCRAPYD_SERVERS`: Scrapyd servers

Create a `.env` file in the working directory with the following variables:

```
SCRAPYD_SERVERS=172.17.0.1:6800
USERNAME=my_name
PASSWORD=my_very_secure_password
```

## Gerapy

Projects folder: `/var/lib/docker/volumes/scrapydweb-docker_gerapy-data/_data/projects`
Put your scrapy projects here

## About the Project

Scrapy is an open-source and collaborative framework for extracting the data you need from websites in a fast, simple, yet extensible way.

Scrapyd is a service for running Scrapy spiders. It allows you to deploy your Scrapy projects and control their spiders using a HTTP JSON API.

Scrapyd-client is a client for Scrapyd, providing the `scrapyd-deploy` utility that enables you to deploy your project to a Scrapyd server.

Additional packages incorporated into the project include `scrapy-splash` for Scrapy+JavaScript integration using Splash, `scrapyrt` for easily adding HTTP API to your existing Scrapy project, `spidermon` as a framework to build monitors for Scrapy spiders, and `scrapy-poet` as the web-poet Page Object pattern implementation for Scrapy.

The image is based on `vimagick/scrapyd`, with the seven latest stable python packages installed:

- `scrapy==2.8.0`
- `scrapyd==1.4.1`
- `scrapyd-client==v1.2.3`
- `scrapy-splash==latest`
- `scrapyrt==v0.13`
- `spidermon==1.17.1`
- `scrapy-poet==0.10.1`
