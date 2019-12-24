FROM nginx:1.11.0
RUN mkdir /etc/confd
WORKDIR /etc/confd
ADD confd  /etc/confd/
ADD entrypoint.sh  /entrypoint.sh
RUN chmod +x /etc/confd/confd
ENTRYPOINT ["/bin/sh","/entrypoint.sh"]