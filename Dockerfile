FROM centos:centos6
MAINTAINER pierre.carre78@gmail.com <Pierre CARRE>

# Install tar
RUN yum -y install tar

# Download JDK 7u72 from Oracle download site
RUN cd /opt
RUN curl -L 'http://download.oracle.com/otn-pub/java/jdk/7u72-b14/jdk-7u72-linux-x64.tar.gz' -H 'Cookie: oraclelicense=accept-securebackup-cookie; gpw_e24=Dockerfile' -o jdk-7u72-linux-x64.tar.gz

# Check md5 sum
RUN echo 'cfa44b49e50ea06e5c6ab95ff79e5b2a  jdk-7u72-linux-x64.tar.gz' > jdk-7u72-linux-x64.tar.gz.md5
RUN md5sum -c jdk-7u72-linux-x64.tar.gz.md5

# Untar
RUN tar -xzf jdk-7u72-linux-x64.tar.gz

# Set JAVA_HOME
ENV JAVA_HOME /opt/jdk1.7.0_72

RUN ln -s /opt/jdk1.7.0_72/bin/* /usr/local/bin/