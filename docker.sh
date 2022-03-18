#!/bin/bash

echo 'polopolo' | sudo -S usermod -aG docker $USER
echo 'polopolo' | sudo -S chmod 666 /var/run/docker.sock
