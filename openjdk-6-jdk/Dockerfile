FROM centos:centos7
MAINTAINER Pierre CARRE <pierre.carre78@gmail.com>

RUN yum install -y git subversion java-1.6.0-openjdk java-1.6.0-openjdk-devel && \
yum clean all

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
