FROM tomcat:8.0-alpine
ADD sampleapp.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]

###
###FROM tomcat
###COPY target/sampleapp.war /usr/local/tomcat/webapps
###EXPOSE 8080
###CMD /usr/local/tomcat/bin/catalina.sh run
###
