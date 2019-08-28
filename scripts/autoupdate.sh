#!/bin/bash
echo "AUTO-UPDATING SYSTEM"
date
apt-get update
apt-get upgrade -y
apt-get autoclean
