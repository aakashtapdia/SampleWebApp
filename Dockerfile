FROM centos

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://downloads.apache.org/tomcat/tomcat-8/v8.5.57/bin/apache-tomcat-8.5.57.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.57/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps

RUN curl -uaakashtapdia@yahoo.co.in:AP8SZtFXeafHm8ekZwqa94T8nrC -O -L "https://testjfrogcloud2020.jfrog.io/artifactory/GOF-repo/com/wakaleo/gameoflife/gameoflife-web/1.1-SNAPSHOT/gameoflife-web-1.1-SNAPSHOT.war"

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
