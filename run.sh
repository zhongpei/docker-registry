#!/bin/bash
sudo docker run  --name=registry \
     -p 5000:5000 \
     -v $(pwd)/config.yml:/var/lib/registry/config.yml:ro \
     -v /data/registry:/var/lib/registry \
     registry:2
