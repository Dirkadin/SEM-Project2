#!/bin/bash
echo Building image
docker image build -t project1 .
docker run -d -p 80:3000 -it project1
