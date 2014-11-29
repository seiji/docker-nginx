FROM nginx

RUN apt-get install -y curl

# confd v.0.6.3
RUN curl -L -o confd https://github.com/kelseyhightower/confd/releases/download/v0.6.3/confd-0.6.3-linux-amd64
RUN mv confd /usr/local/bin/confd
RUN chmod +x /usr/local/bin/confd

# nginx
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /etc/nginx/sites-enabled
RUN rm -f /etc/nginx/conf.d/default.conf

ADD confd /etc/confd/

ADD ./boot.sh /opt/boot.sh
RUN chmod +x /opt/boot.sh

CMD /opt/boot.sh
