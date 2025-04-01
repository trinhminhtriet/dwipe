FROM rust:1.84.0-bookworm AS builder

# Install dependencies including LLVM 14 first
RUN apt-get update && apt-get install -y \
  clang \
  cmake \
  libssl-dev \
  pkg-config \
  llvm-14 \
  libclang-14-dev

# Set LIBCLANG_PATH after LLVM 14 is installed
ENV LIBCLANG_PATH=/usr/lib/llvm-14/lib

WORKDIR /app
COPY . /app

RUN cargo build --release


# FROM debian:bookworm-slim
FROM scratch
ARG APPLICATION="dwipe"
ARG DESCRIPTION="Fast, cross-platform disk cleanup tool with interactive UI for easy directory size visualization."
ARG PACKAGE="trinhminhtriet/dwipe"

LABEL org.opencontainers.image.ref.name="${PACKAGE}" \
  org.opencontainers.image.authors="Triet Trinh <contact@trinhminhtriet.com>" \
  org.opencontainers.image.documentation="https://github.com/${PACKAGE}/README.md" \
  org.opencontainers.image.description="${DESCRIPTION}" \
  org.opencontainers.image.licenses="MIT" \
  org.opencontainers.image.source="https://github.com/${PACKAGE}"


COPY --from=builder /app/target/release/dwipe /bin/dwipe

ENTRYPOINT ["dwipe"]
