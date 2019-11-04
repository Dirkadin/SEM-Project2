FROM node
RUN apt-get -y update 
RUN apt-get install -y git

WORKDIR /app
RUN git clone https://github.com/Dirkadin/SEM-Project1.git

RUN npm install

CMD ["npm", "start"]

