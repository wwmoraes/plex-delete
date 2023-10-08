IMAGE ?= wwmoraes/plex-delete
TAG ?= latest
VERSION ?= ${TAG}

.PHONY: image
image: CREATED=$(shell date -u +"%Y-%m-%dT%TZ")
image: REVISION=$(shell git log -n 1 --format="%H")
image:
	docker build --load \
		--build-arg VERSION=${VERSION} \
		--label org.opencontainers.image.created=${CREATED} \
		--label org.opencontainers.image.revision=${REVISION} \
		--label org.opencontainers.image.documentation=https://github.com/${IMAGE}/blob/master/README.md \
		--label org.opencontainers.image.source=https://github.com/${IMAGE} \
		--label org.opencontainers.image.url=https://hub.docker.com/r/${IMAGE} \
		-t ${IMAGE}:${TAG} \
		.
