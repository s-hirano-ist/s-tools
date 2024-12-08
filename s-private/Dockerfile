FROM node:22.12.0-alpine@sha256:96cc8323e25c8cc6ddcb8b965e135cfd57846e8003ec0d7bcec16c5fd5f6d39f AS base

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
