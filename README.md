# Minimal Docker Image for DroneCI Server Community Edition

[![Build Status](https://cloud.drone.io/api/badges/guessi/drone-server-oss/status.svg)](https://cloud.drone.io/guessi/drone-server-oss)

```bash
$ docker image ls

REPOSITORY    TAG         SIZE
guessi/drone  v1.7.0-oss  30.5MB # minimal DroneCI server community edition docker image
drone/drone   1.7.0       67.7MB # official image
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
