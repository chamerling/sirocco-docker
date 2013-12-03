#!/bin/bash

cd /opt/glassfish4/glassfish/lib/endorsed

wget http://repo1.maven.org/maven2/ch/qos/logback/logback-classic/1.0.13/logback-classic-1.0.13.jar
wget http://repo1.maven.org/maven2/ch/qos/logback/logback-core/1.0.13/logback-core-1.0.13.jar
wget http://repo1.maven.org/maven2/org/slf4j/slf4j-api/1.7.5/slf4j-api-1.7.5.jar
wget http://repo1.maven.org/maven2/org/slf4j/jul-to-slf4j/1.7.5/jul-to-slf4j-1.7.5.jar

cd /opt/glassfish4/glassfish/modules
wget http://repo1.maven.org/maven2/org/glassfish/jersey/containers/glassfish/jersey-gf-cdi/2.0/jersey-gf-cdi-2.0.jar
mv jersey-gf-cdi-2.0.jar jersey-gf-cdi.jar

cd /opt/glassfish4/glassfish/domains/domain1/lib/
wget http://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.26/mysql-connector-java-5.1.26.jar