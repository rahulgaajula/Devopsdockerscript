

#!/bin/sh 
set +x  

# Clone Dockerfile of the <Module> - $2 is Gitlab root passowrd 
git clone https://rahulgaajula:We!come123@github.com/rahulgaajula/devopsDimage.git || exit 1  

# Build Docker image of <Module> - $1 is module name
chmod -R -755 devopsDimage
cd devopsDimage || exit 1 

docker build --no-cache=true -t devopsDimage . || exit 1  

cd .. && rm -rf devopsDimage || exit 1  

# Login to Nexus3(Docker Image Repository) - $3 is Nexus3 Admin password 

#docker login -u admin -p $1 172.25.30.39:8123 || exit 1  

# Tag the docker image of <Module> 

#docker tag devopsDimage:latest 172.25.30.39:8123/devopsDimage:latest || exit 1  

# Push the docker image of <Module> 

#docker push 172.25.30.39:8123/devopsDimage:latest || exit 1

