FROM node:22.13.1-alpine@sha256:e2b39f7b64281324929257d0f8004fb6cb4bf0fdfb9aa8cedb235a766aec31da AS base

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
