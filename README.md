# Minimized Docker Image for DroneCI Server

[![Build Status](https://cloud.drone.io/api/badges/guessi/drone-server-images/status.svg)](https://cloud.drone.io/guessi/drone-server-images)

## Key Differences

- Build with Go 1.14, Alpine 3.13
- Build with tags (nolimit, oss)
- Optimized Docker images

## Minimized DroneCI Server Image

### DroneCI server build with `--tags "nolimit oss"`

```bash
$ docker image ls

REPOSITORY    TAG                SIZE
guessi/drone  2.0.2-nolimit-oss  34.1MB
guessi/drone  latest             34.1MB
guessi/drone  nolimit-oss        34.1MB
```

### DroneCI server build with `--tags "nolimit"`

```bash
$ docker image ls

REPOSITORY    TAG                SIZE
guessi/drone  2.0.2-nolimit      51.8MB
guessi/drone  nolimit            51.8MB
```

### DroneCI server build without `--tags`

```bash
$ docker image ls

REPOSITORY    TAG                SIZE
guessi/drone  2.0.2              51.8MB
```

## DroneCI Server Official Image

```bash
$ docker image ls

REPOSITORY    TAG                SIZE
drone/drone   2.0.2              52.3MB
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
