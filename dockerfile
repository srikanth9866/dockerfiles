Main file 
{
FROM amazonlinux
RUN dnf install java-17-amazon-corretto -y
RUN yum install -y rpm wget zip gzip tar
WORKDIR /opt/
# Add Jenkins repository and key
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo && \
    rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
RUN yum update -y
RUN yum install -y jenkins
# Download the Jenkins WAR file if not already present
RUN wget -O /usr/share/jenkins/jenkins.war https://get.jenkins.io/war/latest/jenkins.war
EXPOSE 8080
# Set the entry point to run Jenkins directly
ENTRYPOINT ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
}
