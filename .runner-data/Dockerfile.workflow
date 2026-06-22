FROM node:lts

RUN apt-get update && apt-get install -y docker.io curl jq && rm -rf /var/lib/apt/lists/*

RUN BUILDX_VERSION=$(curl -sL "https://api.github.com/repos/docker/buildx/releases/latest" | jq -r '.tag_name') \
    && mkdir -p /usr/lib/docker/cli-plugins \
    && curl -sL "https://github.com/docker/buildx/releases/download/${BUILDX_VERSION}/buildx-${BUILDX_VERSION}.linux-amd64" -o /usr/lib/docker/cli-plugins/docker-buildx \
    && chmod +x /usr/lib/docker/cli-plugins/docker-buildx
