#!/bin/bash

#build image docker
docker build -t ghcr.io/praset911/karsajobs-ui:latest .
#login github container registry
docker login --username praset911 --password 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 ghcr.io
#push image ke github container registry
docker push ghcr.io/praset911/karsajobs-ui:latest