# Minimal Docker Image for DroneCI Server

[![Build Status](https://cloud.drone.io/api/badges/guessi/drone-server-images/status.svg)](https://cloud.drone.io/guessi/drone-server-images)

## Key Differences

- Build with Go 1.14
- Build with tags (nolimit, oss)
- Optimized Docker images

## Minimal docker image - DroneCI server community edition

```bash
$ docker image ls

REPOSITORY    TAG                SIZE
guessi/drone  2.0.1-nolimit-oss  33.8MB
guessi/drone  latest             33.8MB
guessi/drone  nolimit-oss        33.8MB
```

## Minimal docker image - DroneCI server enterprise edition

```bash
$ docker image ls

REPOSITORY    TAG                SIZE
guessi/drone  2.0.1-nolimit      51.4MB
guessi/drone  nolimit            51.4MB
```

## DroneCI Server Official Image

```bash
$ docker image ls

REPOSITORY    TAG                SIZE
drone/drone   2.0.1              52.3MB
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
