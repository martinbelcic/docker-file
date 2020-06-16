#!/bin/bash
sudo docker build -t tickets - < Dockerfile
sudo docker run -p 12345:12345 --mount source=my-vol,target=/usr/local/Tickets tickets


