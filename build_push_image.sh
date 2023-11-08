#!/bin/bash

# build docker image dari Dockerfile dengan nama dan tag item-app:v1
docker build -t item-app:v1 .

#melihat daftar docker image yang tersedia di lokal 
docker images

#mengubah nama image dan tag "item-app" menjadi "ghcr.io/praset911/item-app:v1"
docker tag item-app:v1 ghcr.io/praset911/item-app:v1

#login github packages menggunakan docker 
docker login --username praset911 --password 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 ghcr.io

#mengunggah image ke github packages
docker push ghcr.io/praset911/item-app:v1