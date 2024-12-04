FROM node:22.11.0-alpine@sha256:b64ced2e7cd0a4816699fe308ce6e8a08ccba463c757c00c14cd372e3d2c763e AS base

RUN npm install -g pnpm

RUN apk add --no-cache libc6-compat git

WORKDIR /app

ARG GIT_REPO=https://github.com/s-hirano-ist/s-private.git
ARG GIT_CLONE_DEPTH=1

RUN --mount=type=cache,target=/root/.git \
    git clone $GIT_REPO . --depth=$GIT_CLONE_DEPTH

RUN pnpm install --frozen-lockfile

RUN npx prisma generate

CMD ["pnpm", "prisma:deploy"]
