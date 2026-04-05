FROM tomcat:8.5-jdk8-openjdk-slim
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/myweb-0.0.12.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
