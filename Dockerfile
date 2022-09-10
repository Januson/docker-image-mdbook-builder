FROM circleci/rust:latest

RUN cargo install mdbook

CMD ["/bin/sh"]
