FROM lolhens/baseimage-openjre
ADD target/sampleapp.war sampleapp.war
EXPOSE 80
ENTRYPOINT ["java", "-jar", "sampleapp.war"]
