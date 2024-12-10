FROM fedora
RUN yum -y install nginx hostname
RUN echo "Hello, from container $(hostname)" > /usr/share/nginx/html/index.html
RUN sed -i '/::*80/s/^/#/' /etc/nginx/nginx.conf
EXPOSE 80
CMD nginx -g 'daemon off;'

