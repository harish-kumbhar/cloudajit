FROM Centos: latest
MAINTAINER ajitbkumbhar07@gmail.com
RUN yum install -y httpd\
zip\
unzip\
ADD httpd://www.free-css.com/assets/file/free-css-templates/download/page247/kindle.zip/var/www/html
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN rm -rf markup-kindle/*
RUN rm -rf _MACOSX markup-kndle kindle.zip
CMD ["/usr/sbin/httpd","-D","FOREGGROUND"]
EXPOSE 80
