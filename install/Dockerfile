FROM ubuntu:22.04
LABEL MAINTAINER=serverswebhosting<lotaway@foxmail.com>

#ARG DEBIAN_FRONTEND=noninteractive
#ENV NGINX_VERSION 1.12.1

# -----------------------------------------------------------------------------
# install nginx
# -----------------------------------------------------------------------------
RUN apt-get update -y \
	&& apt-get install -y nginx wget curl nano htop
#RUN ufw allow 'Nginx Full'
# -----------------------------------------------------------------------------
# Clean up
# -----------------------------------------------------------------------------
RUN apt-get -y clean \
  	&& rm -rf /var/lib/apt/lists/*
# -----------------------------------------------------------------------------
# asmbb
# -----------------------------------------------------------------------------
#RUN cd /var/www/html \
#	&& wget 'https://asm32.info/fossil/repo/asmbb/doc/trunk/install/asmbb.tar.gz' \
#	&& tar -xvzf asmbb.tar.gz \
#    && mv asmbb/* ./ && rm -rf asmbb/
COPY asmbb.tar.gz /var/www/html
RUN cd /var/www/html \
	&& tar -xvzf asmbb.tar.gz \
    && mv asmbb/* ./ \
	&& rm -rf asmbb/ \
    && rm asmbb.tar.gz \
	&& chmod +x engine
# -----------------------------------------------------------------------------
# Setting
# -----------------------------------------------------------------------------
COPY conf/default /etc/nginx/sites-enabled/default
COPY conf/entry.sh /home/entry.sh
RUN chmod +x /home/entry.sh
#RUN systemctl restart nginx
RUN cd /var/www/html
WORKDIR /var/www/html

RUN useradd work
RUN chown -R work:work /var/www/html
RUN chown -R work:work /var/log/nginx
RUN sed -i 's/user www-data;/user root;/1' /etc/nginx/nginx.conf
# -----------------------------------------------------------------------------
# Expose our port
# -----------------------------------------------------------------------------
EXPOSE 80 443
#CMD [ "/var/www/html/engine" ]
CMD ["tail", "-f", "/dev/null"]