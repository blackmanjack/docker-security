# Stage 1: Builder
FROM maven:3.8-jdk-11 AS builder

# Simulasikan proses build, hasilkan "build artifact"
RUN echo "OK" > /build-output.txt

# Stage 2: Runtime (minimal)
FROM openjdk:11-jre-slim

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
