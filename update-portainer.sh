#!/bin/bash
docker ps | grep portainer
docker stop portainer
docker rm portainer
docker pull portainer/portainer-ce:latest
docker run -d -p 8000:8000 -p 9443:9443 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
docker service update --image portainer/agent:latest --force portainer-agent_agent 
echo Portainer has been updated successfully.