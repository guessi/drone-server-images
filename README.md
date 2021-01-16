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
guessi/drone  1.10.1-nolimit-oss 32.3MB
guessi/drone  latest             32.3MB
guessi/drone  nolimit-oss        32.3MB
```

## Minimal docker image - DroneCI server enterprise edition

```bash
$ docker image ls

REPOSITORY    TAG                SIZE
guessi/drone  1.10.1-nolimit     66.4MB
guessi/drone  nolimit            66.4MB
```

## DroneCI Server Official Image

```bash
$ docker image ls

REPOSITORY    TAG                SIZE
drone/drone   1.10.1             67.3MB
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
