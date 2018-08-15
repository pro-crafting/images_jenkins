FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get update && \
    apt-get install -y ansible && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# drop back to the regular jenkins user - good practice
USER jenkins