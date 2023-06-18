FROM tomcat:8.0-alpine
LABEL maintainer="jjjesss@gmail.com"

ADD my-app/target/my-app-1.0-SNAP /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
