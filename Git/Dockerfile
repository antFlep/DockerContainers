FROM debian:latest

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive \
	apt-get install openssh-server \
    git -y

ARG git_uid=5581
ARG git_gid=5581

RUN echo ${git_gid}
RUN groupadd \
	--gid ${git_gid} \
	git && \
	adduser \
	--uid ${git_uid} \
	--gid ${git_gid} \
    --disabled-password \
    --shell /usr/bin/git-shell \
    --gecos "" \
    git

RUN ssh-keygen -A && \
    mkdir -p \
        /repositories \
        /git \
        /run/sshd \
        /home/git/.ssh && \
    touch /home/git/.ssh/authorized_keys && \
    chown -R git:git \
        /home/git \
        /repositories && \
    chmod 700 /home/git/.ssh && \
    chmod 600 /home/git/.ssh/authorized_keys
    # echo git:${defaultpassword} | chpasswd

COPY ./resources /git

VOLUME /repositories
EXPOSE 22/tcp

ENTRYPOINT ["/git/entrypoint.sh"]
