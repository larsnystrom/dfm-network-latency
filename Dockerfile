FROM ubuntu:16.04

RUN apt-get update && \
	apt-get install -y curl

ADD format.txt /usr/src/app/format.txt

WORKDIR /usr/src/app
CMD curl -w "@format.txt" -o /dev/null -s "http://example.com"
