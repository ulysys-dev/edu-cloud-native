#!/bin/bash

kubectl create configmap cowsay-config --from-literal=interval=2 --from-literal=name=lee

