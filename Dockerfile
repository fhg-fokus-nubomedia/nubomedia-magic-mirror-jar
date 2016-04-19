FROM nubomedia/apps-baseimage:src

MAINTAINER Nubomedia

RUN mkdir /tmp/nubomedia-magic-mirror
ADD nubomedia-magic-mirror-6.4.1-SNAPSHOT.jar /tmp/nubomedia-magic-mirror/
ADD keystore.jks /

EXPOSE 8443 443

ENTRYPOINT java -jar /tmp/nubomedia-magic-mirror/nubomedia-magic-mirror-6.4.1-SNAPSHOT.jar
