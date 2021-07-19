FROM tomcat:latest

COPY /target/docker-java-sample-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps
