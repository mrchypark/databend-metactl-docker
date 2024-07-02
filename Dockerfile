FROM datafuselabs/databend-meta:v1.2.530 AS builder

FROM debian:bookworm-slim

WORKDIR /app

COPY --from=builder /databend-metactl .
