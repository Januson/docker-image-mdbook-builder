FROM rust:alpine AS builder

RUN apk update \
	&& apk add --no-cache ca-certificates git gzip libc-dev openssh tar \
    && cargo install mdbook

CMD ["/bin/sh"]
