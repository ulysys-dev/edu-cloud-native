#!/bin/bash

openssl genrsa -out tls.key 2048
openssl req -new -x509 -key tls.key -out tls.crt -days 3650 -subj /CN=node2

