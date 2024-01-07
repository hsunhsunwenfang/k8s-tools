
# FROM photon
FROM alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash openssh && \
    apk add strace

# Keep from completed
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["tail -f /dev/null"]
# CMD ["sh", "-c", "while true; do sleep 3600; done"]






