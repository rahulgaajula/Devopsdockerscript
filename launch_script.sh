#!/bin/sh

set +x

# Login to docker image repository and pull the required image
echo "Login to Nexus3 DImage Repository........"
docker login -u admin -p admin123 diwo.teranetworks.com:8123
echo "--------------------------------------------------------"
echo "--------------------------------------------------------"

rm -rf launcher
# Clone Rancher Catalog of <Module> from gitlab
echo "Cloning Rancher catalog of provided DIWO service"
git clone -b dev http://rahulgaajula:We!come123@github.com/rahulgaajula/launcher.git
echo "--------------------------------------------------------"


# cd to folder of docker-compose.yml file of the <Module>
echo "cd to docker-compose.yml file........"
cd launcher/
echo "--------------------------------------------------------"

# Remove rancher service of <Module>
echo "Removing existing service from Rancher........."
echo $7 | $3/rancher-compose --url $4/v1/ --access-key $5 --secret-key $6 --project-name $9 --verbose rm
echo "--------------------------------------------------------"
sleep 15
# Create rancher service of <Module>
echo "Creating given DIWO service in Rancher........."
echo $7 | $3/rancher-compose --url $4/v1/ --access-key $5 --secret-key $6 --project-name $9 --verbose create
echo "--------------------------------------------------------"
sleep 15

# Start rancher service of <Module>
echo "Starting created DIWO service in Rancher..........."
echo $7 | $3/rancher-compose --url $4/v1/ --access-key $5 --secret-key $6 --project-name $9 --verbose start
echo "--------------------------------------------------------"

cd ../../../.. && rm -rf launcher
