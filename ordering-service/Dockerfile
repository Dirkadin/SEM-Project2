FROM node
RUN apt-get -y update 
RUN apt-get install -y git

RUN git clone https://github.com/Dirkadin/SEM-Project2.git

COPY . /app
WORKDIR /app

RUN npm install

CMD ["touch", "logs/ordering-service/events.log", "&"]
CMD ["npm", "start"]

