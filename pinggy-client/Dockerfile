FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
      curl ca-certificates file \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL "https://s3.ap-south-1.amazonaws.com/public.pinggy.binaries/cli/v0.2.5/linux/amd64/pinggy" \
    -o /usr/local/bin/pinggy && \
    chmod +x /usr/local/bin/pinggy

# health / default
CMD ["/usr/local/bin/pinggy", "--help"]