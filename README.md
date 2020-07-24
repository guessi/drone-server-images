# Minimal Docker Image for DroneCI Server

[![Build Status](https://cloud.drone.io/api/badges/guessi/drone-server-images/status.svg)](https://cloud.drone.io/guessi/drone-server-images)

## Minimal docker image - DroneCI server community edition

```bash
$ docker image ls

REPOSITORY    TAG                SIZE
guessi/drone  1.9.0-nolimit-oss  31.2MB
guessi/drone  latest             31.2MB
guessi/drone  nolimit-oss        31.2MB
```

## Minimal docker image - DroneCI server enterprise edition

```bash
$ docker image ls

REPOSITORY    TAG                SIZE
guessi/drone  1.9.0-nolimit      66.8MB
guessi/drone  nolimit            66.8MB
```

## DroneCI Server Official Image

```bash
$ docker image ls

REPOSITORY    TAG                SIZE
drone/drone   1.9.0              67.7MB
```

## Usage

made some changes

```bash
$ vim docker-compose.yml
```

bring DroneCI server up with docker-compose

```bash
$ docker-compose up -d
```

## Reference

- [DroneCI](https://github.com/drone/drone)
- [Build the Community Edition](https://github.com/drone/drone/blob/master/BUILDING_OSS)
