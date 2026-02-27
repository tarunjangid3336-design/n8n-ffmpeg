FROM node:20-bullseye

USER root

RUN apt-get update && \
    apt-get install -y ffmpeg curl && \
    npm install -g n8n

EXPOSE 5678

CMD ["n8n"]
