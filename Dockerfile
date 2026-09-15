FROM node:20-slim AS uibuild
WORKDIR /app
COPY . .
RUN cd src/ui && node build-all.mjs

FROM denoland/deno:latest
WORKDIR /app
COPY . .
COPY --from=uibuild /app/src/ui/dist ./src/ui/dist
EXPOSE 3013
CMD ["run", "--allow-all", "server.ts", "--http", "--port=3013"]
