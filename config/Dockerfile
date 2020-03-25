FROM tomcat:8.5-alpine

ARG IMAGE_ARG

ENV TZ=Asia/Seoul
RUN rm /usr/local/tomcat/conf/server.xml
COPY server.xml /usr/local/tomcat/conf/
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN value=`cat conf/server.xml` && echo "${value//8080/1111}" >| conf/server.xml
RUN echo 's/docversion/'+${IMAGE_ARG}+'/'
RUN sed -i 's/docversion/'+${IMAGE_ARG}'+/' conf/server.xml
RUN rm -Rf /usr/local/tomcat/webapps/ROOT
COPY ${IMAGE_ARG}.war /usr/local/tomcat/webapps
ENV JAVA_OPTS="-Dserver.type=dev"