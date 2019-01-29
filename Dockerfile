FROM jenkins/jenkins:lts

# if we want to install via apt
USER root

RUN apt-get update \
	&& apt-get install -y maven apt-transport-https ca-certificates curl gnupg2 software-properties-common \
	&& curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
	&& add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
	&& apt-get update \
	&& apt-get install -y docker-ce \
	&& apt-get install -y python3-pip


RUN usermod -a -G docker jenkins

# drop back to the regular jenkins user - good practice
USER jenkins
