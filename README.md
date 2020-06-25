# Procedure in running a simple heroku container

1. in Windows
* get a clone copy of the project by running  
git clone https://github.com/melvin-john-banaag/heroku-container.git
* build the dockerfile  
docker build -t melbsmelbs/heroku-container:latest .
* run as a container  
docker run -d -p 8080:8080 --name heroku-demo-container melbsmelbs/heroku-container

2. in Linux
* get a clone copy of the project by running  
git clone https://github.com/melvin-john-banaag/heroku-container.git
* run the shell script  
./heroku-demo-container.sh
