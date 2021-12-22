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
guessi/drone  2.7.2-nolimit-oss  39.3MB
guessi/drone  latest             39.3MB
guessi/drone  nolimit-oss        39.3MB
```

### DroneCI server build with `--tags "nolimit"`

```bash
$ docker image ls

REPOSITORY    TAG                SIZE
guessi/drone  2.7.2-nolimit      58.5MB
guessi/drone  nolimit            58.5MB
```

### DroneCI server build without `--tags`

```bash
$ docker image ls

REPOSITORY    TAG                SIZE
guessi/drone  2.7.2              58.5MB
```

## DroneCI Server Official Image

```bash
$ docker image ls

REPOSITORY    TAG                SIZE
drone/drone   2.7.2-linux-amd64  59.1MB
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
