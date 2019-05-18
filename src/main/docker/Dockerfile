FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
#tet tert test
# Install ansible and all possible other tools needed for later
RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
RUN apt-get update && \
    apt-get install -y ansible \
                         software-properties-common apt-transport-https gnupg2 ca-certificates curl lsb-release && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) \
    stable"  && \
    apt-get update && \
    apt-get -y install docker-ce docker-ce-cli containerd.io && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Allow jenkins to use docker
RUN usermod -a -G docker jenkins

# drop back to the regular jenkins user - good practice
USER jenkins