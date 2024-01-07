
# FROM photon
FROM alpine

# Keep from completed
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["tail -f /dev/null"]
# CMD ["sh", "-c", "while true; do sleep 3600; done"]

RUN apk update && apk upgrade && \
    apk add --no-cache bash openssh && \
    apk add strace





