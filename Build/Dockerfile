# For BUILD
FROM i386/debian:latest
RUN apt-get update && apt-get install rsync -y
RUN mkdir -p /app/license/
COPY app/ /app

WORKDIR /app
CMD sh /app/update_nod.sh
