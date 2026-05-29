#!/bin/bash
apt update -y
apt install docker.io -y
systemctl start docker
systemctl enable docker

aws ecr get-login-password --region ap-south-1 \
| docker login --username AWS --password-stdin <ACCOUNT_ID>.dkr.ecr.ap-south-1.amazonaws.com

docker pull <IMAGE>

docker run -d -p 80:80 <IMAGE>
