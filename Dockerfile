FROM rust:alpine

RUN apk update \
    && apk upgrade \
	&& apk add --no-cache bash ca-certificates git gzip libc-dev openssh openssh-client tar \
    && cargo install mdbook

CMD ["/bin/sh"]
