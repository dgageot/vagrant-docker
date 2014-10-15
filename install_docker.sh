#!/bin/bash

echo "Install Docker"
curl get.docker.io | bash
usermod -a -G docker vagrant

echo "Configure Docker"
service docker stop
nohup /usr/bin/docker -d -D -g /var/lib/docker -H unix:// -H tcp://0.0.0.0:2375 >/dev/null 2>/dev/null &

echo "Installation of Docker done."
