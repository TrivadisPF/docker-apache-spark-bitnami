FROM trivadis/spark-submit:3.5.0

LABEL maintainer="Guido Schmutz <schmutz68@gmail.com>"

ENV SPARK_APPLICATION_JAR_NAME application-1.0
ENV SPARK_APPLICATION_JAR_LOCATION /app/application.jar

COPY template.sh /

USER root

RUN apt-get update && apt-get install -y maven

USER 1001

RUN chmod +x /template.sh \
      && mkdir -p /app \
      && mkdir -p /usr/src/app

# Copy the POM-file first, for separate dependency resolving and downloading
ONBUILD COPY pom.xml /usr/src/app
ONBUILD RUN cd /usr/src/app \
      && mvn -Dmaven.repo.local=/usr/src/app/.m2 dependency:resolve
ONBUILD RUN cd /usr/src/app \
      && mvn -Dmaven.repo.local=/usr/src/app/.m2 verify

# Copy the source code and build the application
ONBUILD COPY . /usr/src/app
ONBUILD RUN cd /usr/src/app \
      && mvn -Dmaven.repo.local=/usr/src/app/.m2 clean package

CMD ["/bin/bash", "/template.sh"]
