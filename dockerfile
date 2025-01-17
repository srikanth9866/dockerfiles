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


[
history
    1  pwd
    2  cd /root/
    3  pwd
    4  cd /.jenkins/
    5  ls
    6  ls -la
    7  cd .jenkins/
    8  ls
    9  cd secrets
   10  ls
   11  cat initialAdminPassword
   12  pwd
   13  history
[ docker pull srikanth0370/batch14:Jenkins
   39  docker images
   40  docker run -d -p 8080:8080 --name jenkins10 027759d8da82
   41  docker ps -a
   42  docker exec -it 3042b142c70f bash
]

]
