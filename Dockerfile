FROM rust:alpine AS builder

RUN apk update \
    && apk upgrade \
	&& apk add --no-cache bash ca-certificates git gzip libc-dev openssh-client tar \
    && cargo install mdbook

CMD ["/bin/sh"]
