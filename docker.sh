#!/bin/bash

$echo 'polopolo' | sudo -S usermod -aG docker $USER

newgrp docker 