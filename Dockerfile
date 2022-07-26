from node:14

WORKDIR /app

RUN apt update && apt install python3 && ln -sf python3 /usr/bin/python

ADD . /app/

RUN npm install

EXPOSE 8080

CMD npm start
