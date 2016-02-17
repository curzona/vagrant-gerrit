#!/usr/bin/env bash

apt-get update
apt-get -y install vim curl nmap tree zip htop upstart 
apt-get -y install openjdk-7-jre-headless
apt-get -y install git

mkdir /opt/gerrit
curl https://gerrit-releases.storage.googleapis.com/gerrit-2.12.war -o gerrit.war
java -jar gerrit.war init -d /opt/gerrit --batch --dev