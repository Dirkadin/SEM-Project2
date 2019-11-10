#!/bin/bash
echo Building image
docker image build -t project2 .
<<<<<<< HEAD
docker run -d -p 80:3000 --mount type=volume,source=hotburger-logs,target=/ordering-service/logs -it project2
=======
docker run -d -p 80:3000 --mount type=bind,source=hotburger-logs,target=/logs -it project2
>>>>>>> 242683edca004ad85959714139eb89f7118f7f5a
