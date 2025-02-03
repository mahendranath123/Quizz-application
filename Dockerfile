FROM tomcat:9.0

# Remove existing webapps to clean Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file
COPY quizz.war /usr/local/tomcat/webapps/ROOT.war

# Create a directory for additional libraries
RUN mkdir -p /usr/local/tomcat/lib/

# Copy required JARs into Tomcat's lib folder
COPY libs/*.jar /usr/local/tomcat/lib/

EXPOSE 8080
CMD ["catalina.sh", "run"]

