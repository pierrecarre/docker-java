FROM centos:centos6
MAINTAINER Pierre CARRE <pierre.carre78@gmail.com>

RUN cd /opt \
&& curl -L 'https://s3.amazonaws.com/pierrecarre-java/oracle-jdk/jdk-1_5_0_22-linux-amd64.bin' \
 -o jdk-1_5_0_22-linux-amd64.bin \
&& chmod +x jdk-1_5_0_22-linux-amd64.bin \
&& yes yes | ./jdk-1_5_0_22-linux-amd64.bin \
&& rm -rf jdk-1_5_0_22-linux-amd64.bin

# Set environment variables.
ENV HOME /root

# Set JAVA_HOME
ENV JAVA_HOME /opt/jdk1.5.0_22
ENV PATH $JAVA_HOME/bin:$PATH

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
