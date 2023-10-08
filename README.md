# plex-delete

> belminf/plex-delete as a container

![Status](https://img.shields.io/badge/status-active-success.svg)
[![GitHub Issues](https://img.shields.io/github/issues/wwmoraes/plex-delete.svg)](https://github.com/wwmoraes/plex-delete/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/wwmoraes/plex-delete.svg)](https://github.com/wwmoraes/plex-delete/pulls)

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/wwmoraes/plex-delete/master.svg)](https://results.pre-commit.ci/latest/github/wwmoraes/plex-delete/master)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/wwmoraes/plex-delete)](https://hub.docker.com/r/wwmoraes/plex-delete)
[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/wwmoraes/plex-delete?label=image%20version)](https://hub.docker.com/r/wwmoraes/plex-delete)
[![Docker Pulls](https://img.shields.io/docker/pulls/wwmoraes/plex-delete)](https://hub.docker.com/r/wwmoraes/plex-delete)

---

## 📝 Table of Contents

- [About](#-about)
- [Getting Started](#-getting-started)
- [Deployment](#-deployment)
- [Usage](#-usage)
- [Built Using](#-built-using)
- [TODO](./TODO.md)
- [Contributing](./CONTRIBUTING.md)
- [Authors](#-authors)
- [Acknowledgments](#-acknowledgements)

## 🧐 About

Container version of [belminf/plex-delete][upstream-plex-delete] python script.

## 🏁 Getting Started

Clone this repository and build the image locally with `make image`. The
Dockerfile is self-contained and pulls directly from the upstream.

## 🎈 Usage

Pull the image from Docker Hub and run it as per upstream script instructions.

## 🚀 Deployment

Run the container:

```shell
docker run --rm -it wwmoraes/plex-delete:latest \
  --server your-server-address \
  --token your-plex-token \
  --delete-watched \
  --library library-index
```

Change it to the equivalent of your orchestration tool of choice.

## 🔧 Built Using

- [Docker](https://www.docker.com) - Container image

## 🧑‍💻 Authors

- [@wwmoraes](https://github.com/wwmoraes) - Idea & Initial work

## 🎉 Acknowledgements

- [@belminf](https://github.com/belminf) - Upstream script

[upstream-plex-delete]: https://github.com/belminf/plex-delete
