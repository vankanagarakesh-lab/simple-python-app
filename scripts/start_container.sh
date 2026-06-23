#!/bin/bash
set -e

docker pull nagarakesh123/simple-python-flask-app:latest

docker stop flask-app || true
docker rm flask-app || true

docker run -d --name flask-app -p 5000:5000 nagarakesh123/simple-python-flask-app:latest