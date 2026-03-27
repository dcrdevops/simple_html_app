FROM quay.io/centos/centos:stream9

RUN dnf -y update && \
    dnf -y install httpd \
    && dnf clean all \
    && rm -rf /var/cache/yum \
    && rm -rf /tmp/* /var/tmp/*

EXPOSE 80

COPY simple_HTML_template_01/* /var/www/html/

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
