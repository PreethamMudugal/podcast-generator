FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

RUN apt-get -y install python3-distutils

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
