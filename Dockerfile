FROM jenkins:1.609.1
MAINTAINER Bruno Fernandez

USER root

# Install Docker from Docker Inc. repositories.
RUN curl -sSL https://get.docker.com/ | sh


RUN mkdir /var/log/jenkins
RUN mkdir /var/cache/jenkins
RUN chown -R  jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins
USER jenkins
ENV JENKINS_OPTS="--logfile=/var/log/jenkins/jenkins.log --webroot=/var/cache/jenkins/war"

