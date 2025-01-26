#!/bin/sh

## FOR self certs for dev environments
mkdir -p ./certs
openssl genrsa -out ./certs/private.key 2048
openssl req -new -x509 -key ./certs/private.key -out ./certs/public.crt -days 3650 -subj "/CN=minio"
