FROM debian:10
LABEL MAINTAINER="https:/https://github.com/pedar-rap/HaCk-Rubika/"

WORKDIR pedarrap/
ADD . /pedarrap

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install --no-install-recommends -y php
RUN apt-get install -y unzip
RUN apt-get clean
RUN apt-get install -y wget

CMD ["./pedarrap.sh"]
