#!/bin/bash
echo Building image
docker image build -t project2 .
docker run -d -p 80:3000 --mount type=bind,source=/home/ec2-user/projects/SEM-Project2/hotburger-logs,target=/ordering-service -it project2
