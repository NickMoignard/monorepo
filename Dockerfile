FROM node:18-alpine

ARG PNPM_HOME="/usr/local/shared/pnpm/shared/shared/v3/shared/v3"
ENV PNPM_HOME=${PNPM_HOME}

ARG SHELL="bash"
ENV SHELL=${SHELL}

RUN npm i -g pnpm@8.6.6

ENV PATH="${PNPM_HOME}:${PATH}"

RUN pnpm setup
RUN pnpm i -g turbo
RUN pnpm i -g @nestjs/cli

COPY . .

RUN pnpm i --prod

RUN turbo run build
