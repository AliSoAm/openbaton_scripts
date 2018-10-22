#!/bin/bash
sudo apt-get update>/dev/null 2>&1
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common libltdl7>/dev/null 2>&1
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add ->/dev/null 2>&1
sudo apt-key fingerprint 0EBFCD88>/dev/null 2>&1
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable">/dev/null 2>&1
sudo apt-get update>/dev/null 2>&1
sudo apt-get install -y docker-ce>/dev/null 2>&1
sudo touch /etc/docker/daemon.json>/dev/null 2>&1
echo '{"registry-mirrors": ["http://repo.docker.ir:5000"]}' | sudo tee /etc/docker/daemon.json>/dev/null 2>&1
sudo service docker restart>/dev/null 2>&1
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose>/dev/null 2>&1
sudo chmod +x /usr/local/bin/docker-compose>/dev/null 2>&1
