# Chia in Docker

This project helps me deploy a farming rig without hassle.

## Description

The Dockerfiles and scripts are used to dockerize the [chia](https://github.com/Chia-Network/chia-blockchain/wiki/INSTALL) application.

The `docker-compose.yml` when run gets my chia image from Docker Hub and runs chia farmer without hassle.

## Getting Started

### Dependencies

You need docker and docker-compose.

### Building

To build the chia image, edit `build.sh` and then run:

```bash
sh build.sh
```

### Installing

Fork it and make it your own. No installation needed, everything is setup with docker.

### Executing program

```
docker-compose up
```

## Authors

Contributors names and contact info

Twitter: [@gnuion](https://twitter.com/gnuion)

## License

CopyLeft CC-0

## Acknowledgments

Inspiration, code snippets, etc.

- [Chia Installation Guide](https://github.com/Chia-Network/chia-blockchain/wiki/INSTALL)
- [Building a Small Chia Blockchain Docker Container](https://elliottback.medium.com/building-a-small-chia-blockchain-docker-container-cb9bb9795779)
