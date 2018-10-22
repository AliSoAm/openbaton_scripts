#!/bin/bash
sudo apt-get update>/dev/null
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common libltdl7>/dev/null
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add ->/dev/null
sudo apt-key fingerprint 0EBFCD88>/dev/null
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable">/dev/null
sudo apt-get update>/dev/null
sudo apt-get install docker-ce>/dev/null
sudo touch /etc/docker/daemon.json
sudo echo '{"registry-mirrors": ["http://repo.docker.ir:5000"]}'> /etc/docker/daemon.json
sudo service docker restart
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose>/dev/null
sudo chmod +x /usr/local/bin/docker-compose>/dev/null
sudo groupadd docker>/dev/null
sudo usermod -aG docker $USER>/dev/null
