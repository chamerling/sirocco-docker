# chamerling/sirocco
#
# VERSION               1.0

FROM ubuntu:latest
MAINTAINER Christophe Hamerling "christophe.hamerling@gmail.com"

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y openjdk-6-jdk zip wget curl git-core build-essential mysql-server

RUN git clone --recursive git@github.com:ow2-sirocco/sirocco.git

RUN wget http://download.java.net/glassfish/4.0/release/glassfish-4.0.zip
RUN mv /glassfish-4.0.zip /opt; cd /opt; unzip glassfish-4.0.zip; rm glassfish-4.0.zip

ENV GF_HOME /opt/glassfish4
ENV PATH $PATH:$JAVA_HOME/bin:$GF_HOME/bin

ADD scripts/fix.sh
CMD /fix.sh

# Configure

RUN cp /sirocco/etc/glassfish_config/* /opt/glassfish4/glassfish/domains/domain1/config

ADD etc/mysql-listen.cnf /etc/mysql/conf.d/mysql-listen.cnf
CMD ["/usr/bin/mysqld_safe"]

ADD etc/sirocco_init.sql /sirocco_init.sql
RUN mysql -u root -proot </sirocco_init.sql

ADD /sirocco/etc/db/sirocco_db.sql /sirocco_db.sql
RUN mysql -usirocco -psirocco < /sirocco_init.sql

# RUN wget sirocco-VERSION.ear

RUN asadmin start-domain
# RUN asadmin deploy sirocco-VERSION.ear


# Expose public and admin ports
EXPOSE 3306 4848 8080 8181 8686 7676 3700 3820 3920
