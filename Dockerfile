FROM java:6

RUN wget http://archive.apache.org/dist/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz

RUN tar xzvf apache-maven-3.2.5-bin.tar.gz

ENV PATH $PWD/apache-maven-3.2.5/bin:$PATH

ENV PORT 8080

EXPOSE 8080

CMD git clone https://github.com/howardfackrell/milestone-cloud-deploy.git && cd milestone-cloud-deploy && ./specify.sh && mvn install && cat Procfile | sed 's/web: //g' | sh