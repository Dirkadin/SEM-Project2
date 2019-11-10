#!/bin/bash
echo Building image
docker image build -t monitoring-service .
docker run -d -p 8080:3000 --mount type=volume,source=hotburger-logs,target=/app/logs -it project2
