
FROM debian:latest

RUN mkdir /usr/local/Tickets
WORKDIR  /usr/local/Tickets

RUN	apt update; \
	apt install git build-essential libpthread-stubs0-dev --assume-yes; \
	git clone https://github.com/JPCard/TP-Hilos-Semaforos.git /usr/local/Tickets; \
	gcc SERVIDOR_TICKETS.c -o SERVIDOR_TICKETS -pthread -ldl;

EXPOSE 12345	
CMD ./SERVIDOR_TICKETS & tail -F tickets.log

