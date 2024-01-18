FROM openjdk:11
EXPOSE 8081
ADD target/urooj-0.0.1-SNAPSHOT.war urooj-0.0.1-SNAPSHOT.war
ENTRYPOINT [ "java", "-Dspring.profiles.active=prod","-jar","/urooj-0.0.1-SNAPSHOT.war" ]