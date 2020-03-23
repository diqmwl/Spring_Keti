FROM tomcat:8.5-alpine

ENV TZ=Asia/Seoul
RUN rm /usr/local/tomcat/conf/server.xml
COPY server.xml /usr/local/tomcat/conf/
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN value=`cat conf/server.xml` && echo "${value//8080/1111}" >| conf/server.xml
RUN rm -Rf /usr/local/tomcat/webapps/ROOT
COPY $HOME/workspace/spring/target/visual-1.0.0-BUILD-SNAPSHOT.war /usr/local/tomcat/webapps
ENV JAVA_OPTS="-Dserver.type=dev"