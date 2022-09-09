FROM rust:alpine AS builder

RUN apk update \
	&& apk add --no-cache git libc-dev \
    && cargo install mdbook

CMD ["/bin/sh"]
