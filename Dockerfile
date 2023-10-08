FROM alpine:3 AS build

RUN apk update && apk add --no-cache \
  git=~2 \
  && rm -rf /var/cache/apk/*

WORKDIR /src

ARG VERSION
RUN git clone https://github.com/belminf/plex-delete.git .


FROM python:3-alpine AS run

ARG VERSION
LABEL org.opencontainers.image.version="${VERSION}"

COPY --from=build /src/plex-delete /usr/local/bin/plex-delete
RUN chmod +x /usr/local/bin/plex-delete

USER 20000:20000

ENTRYPOINT [ "/usr/local/bin/plex-delete" ]

LABEL org.opencontainers.image.authors="William Artero <docker@artero.dev>"
LABEL org.opencontainers.image.description="belminf/plex-delete as a container"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.title="Plex Delete"
LABEL org.opencontainers.image.vendor="William Artero <docker@artero.dev>"
LABEL org.opencontainers.image.base.name="python"
