#!/bin/bash
# Configure EWP
unzip /root/ewp-reference-connector-1.0-SNAPSHOT.war -d /usr/local/tomee/webapps/ewp
mkdir -p /usr/local/tomee/certs
keytool -v -importkeystore -srckeystore /root/keys/ewp-local-uma.p12 -srcstoretype PKCS12 \
	-destkeystore /usr/local/tomee/certs/ewp-local-uma.jks -deststoretype JKS \
	-srcstorepass changeit -deststorepass changeit
cp /root/mysql-connector-java-8.0.21.jar /usr/local/tomee/lib/mysql-connector-java-8.0.21.jar
cp /root/conf/tomee.xml /usr/local/tomee/conf/tomee.xml
cp /root/conf/server.xml /usr/local/tomee/conf/server.xml
cd /usr/local/tomee
catalina.sh run