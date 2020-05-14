FROM debian:buster-slim

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install samba -y

COPY /resources/smb.conf /etc/samba/smb.conf

EXPOSE 445/tcp

VOLUME /samba

ENTRYPOINT ["smbd", "--foreground", "--log-stdout", "-d", "3", "--no-process-group"]