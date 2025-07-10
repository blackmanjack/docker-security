FROM alpine

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh && chown appuser:appgroup /entrypoint.sh

USER root

CMD ["/entrypoint.sh"]

