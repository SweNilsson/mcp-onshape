FROM denoland/deno:latest
WORKDIR /app
COPY . .
RUN deno task ui:build || true
EXPOSE 3013
CMD ["run", "--allow-all", "server.ts", "--http", "--port=3013"]
