# build image and name jenkins:local
docker build . -t jenkins:local

docker-compose up -d
# docker run -itd -e JENKINS_USER=$(id -u) --name jenkins -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd)/jenkins_home:/var/jenkins_home -v $(pwd)/jenkins_data:/home/jenkins/devops -p 8090:8080 -p 50000:50000 -u root jenkins:local

#  -v $(which docker):/usr/bin/docker
# get auth password
cat jenkins_home/secrets/initialAdminPassword