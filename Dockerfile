FROM python:2-slim

WORKDIR /app

RUN apt-get update && apt-get -y install curl make gcc

RUN curl -LJO https://raw.githubusercontent.com/rayregula/honeyprint/master/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

RUN curl -LJO https://raw.githubusercontent.com/Rayregula/honeyprint/master/server.py

EXPOSE 9100/tcp
EXPOSE 9100/udp

CMD [ "python", "server.py" ]
