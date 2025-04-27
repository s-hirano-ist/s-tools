FROM node:22.15.0-alpine@sha256:ad1aedbcc1b0575074a91ac146d6956476c1f9985994810e4ee02efd932a68fd AS base

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
