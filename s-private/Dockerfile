FROM node:22.13.0-alpine@sha256:f2dc6eea95f787e25f173ba9904c9d0647ab2506178c7b5b7c5a3d02bc4af145 AS base

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
