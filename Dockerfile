# Use official Tomcat base image
FROM tomcat:8-jre8

LABEL maintainer="devops-pipeline@example.com"

# Remove default webapps to keep it clean
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR to webapps
COPY target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/hello.war

# Expose Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
