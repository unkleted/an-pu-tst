#!/bin/bash

if [[ $(curl -s -o /dev/null -w "%{http_code}" http://169.254.169.254/latest/meta-data/public-hostname) -eq 200 ]]; then 
    export subset=$(curl http://169.254.169.254/latest/meta-data/public-hostname)
else 
    export subset=$(curl http://169.254.169.254/latest/meta-data/local-hostname) 
fi