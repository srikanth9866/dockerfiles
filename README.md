# dockerfiles
jenkins
WE NEED TO INSTALL DOCKER FIRST AND START IT 

docker build -t --name jenkins -p 8080:8080 jenkinsimg:latest
docker run -it --name jenkins1 -p 8080:8080 jenkinsimg
