## Java 6 with CentOS 6

This is docker images of CentOS 6 with several versions of Java.

## Loading different versions of Java

The different versions are defined using TAGs.

The available versions are

* latest - Oracle Java version 6 JDK
* oracle-5-jdk - Oracle Java version 5 JDK
* oracle-6-jdk - Oracle Java version 6 JDK

Example to run a container with Oracle JDK 6

    docker run -ti pierrecarre/java-centos:oracle-6-jdk