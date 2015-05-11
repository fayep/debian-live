FROM debian:wheezy
RUN apt-get update && apt-get install -y live-build insserv libbz2-1.0 libdb5.1 libsemanage-common libsemanage1 libslang2 libustr-1.0-1 libept1.4.12 libgcrypt11 libgnutls26 libgpg-error0 libidn11 libnfnetlink0 libp11-kit0 libsqlite3-0 libtasn1-3 libxapian22
WORKDIR /root
COPY privileged.sh /root/privileged.sh
RUN lb config; \
    lb config --system live
COPY config /root/config
