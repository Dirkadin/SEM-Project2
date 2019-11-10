#!/bin/bash
echo Building image
docker image build -t project2 .
docker run -d -p 80:3000 --mount type=bind,source=hotburger-logs,target=/ordering-service -it project2
