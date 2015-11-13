#!/bin/bash
sudo docker run  --name=registry \
     -d \
     -p 5000:5000 \
     -v $(pwd):/registry-conf \
     -v /data/registry:/tmp/registry  \
     -e STANDALONE=false \
     -e DEBUG=true \
     -e MIRROR_SOURCE=https://registry-1.docker.io \
     -e MIRROR_SOURCE_INDEX=https://index.docker.io \
     registry 
