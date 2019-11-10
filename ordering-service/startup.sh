#!/bin/bash
echo Building image
docker image build -t project2 .
docker run -d -p 80:3000 --mount type=volume,source=hotburger-logs,target=/app/logs -it project2
