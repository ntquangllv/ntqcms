FROM mysql:5.7
MAINTAINER ntq-CMS

## Default password
ENV MYSQL_ROOT_PASSWORD 121212

## Configuration MySQL Server
ADD config/mysql.cnf /etc/mysql/conf.d/mysql.cnf
RUN chmod a-w /etc/mysql/conf.d/mysql.cnf


## source: http://www.adcisolutions.com/knowledge/docker-drupal-developers-how-create-lamp 
## source: https://hub.docker.com/_/mysql/
