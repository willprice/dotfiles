FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y fish git stow python3 python3-pip vim && \
    rm -rf /var/lib/apt/lists/*
RUN useradd --no-log-init --create-home  --gid users --uid 1000 user
USER user
WORKDIR /home/user
ENTRYPOINT /bin/bash
