# Minimized Docker Image for DroneCI Server

[![Build Status](https://cloud.drone.io/api/badges/guessi/drone-server-images/status.svg)](https://cloud.drone.io/guessi/drone-server-images)

## Key Differences

- Build with golang:1.18-alpine3.16
- Build with tags (nolimit, oss)
- Optimized Docker images

## Minimized DroneCI Server Image

```bash
$ docker image ls

REPOSITORY    TAG                 SIZE
guessi/drone  2.16.0-nolimit-oss  35.8MB # DroneCI Server Image build with `--tags "nolimit oss"`
guessi/drone  2.16.0-nolimit      52.1MB # DroneCI Server Image build with `--tags "nolimit"`
guessi/drone  2.16.0              52.1MB # DroneCI Server Image build without `--tags`
drone/drone   2.16.0-linux-amd64  60.4MB # DroneCI Server Official Image
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

- [DroneCI](https://github.com/harness/drone)
- [Build the Community Edition](https://github.com/harness/drone/blob/master/BUILDING_OSS)
