# Minimized Docker Image for DroneCI Server

⚠️ For those who is using images here, please note this repository is not maintain anymore. ⚠️

## Why I don't maintain this repository

* Drone CI community grows extremely slow
* It's still build with [golang 1.12](https://github.com/drone/runner-go/blob/v1.12.0/go.mod), which have reached EOL for years - https://endoflife.date/go
* It's still build with [docker 17.12](https://github.com/harness/drone/blob/v2.17.0/go.mod) which have reached EOL for years - https://endoflife.date/docker-engine
* Simple [PR](https://github.com/drone/autoscaler/pull/75) could takes years to get response.

Current latest build `go.mod` contains tons of legacy packages doesn't looks safe to me.

- https://github.com/drone/autoscaler/blob/v1.10.0/go.mod
- https://github.com/drone/drone-go/blob/v1.7.1/go.mod
- https://github.com/drone/go-scm/blob/v1.29.1/go.mod
- https://github.com/drone/runner-go/blob/v1.12.0/go.mod
- https://github.com/harness/drone-cli/blob/v1.7.0/go.mod
- https://github.com/harness/drone/blob/v2.17.0/go.mod

## Legacy document

<details>
  
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

</details>
