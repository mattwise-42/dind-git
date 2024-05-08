FROM docker:stable-dind

RUN apk add --no-cache git

RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan gitlab.com >> ~/.ssh/known_hosts

CMD ["dockerd"]