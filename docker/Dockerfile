# Ref: https://hub.docker.com/_/rust
#
FROM rust:1.66-bullseye as builder
# Add Yew build dependencies
RUN cargo install trunk
RUN rustup target add wasm32-unknown-unknown
WORKDIR /usr/src/yew-app
COPY . .
RUN make release
# cargo install --path .

FROM debian:bullseye-slim
#RUN apt-get update \
#  && apt-get install -y tini \
#  && rm -rf /var/lib/apt/lists/*
WORKDIR /opt/yew-app
COPY --from=builder /usr/src/yew-app/frontend/dist/ /opt/yew-app/frontend/dist/
COPY --from=builder /usr/src/yew-app/backend/target/release/backend /opt/yew-app/bin/

CMD ["/opt/yew-app/bin/backend"]
