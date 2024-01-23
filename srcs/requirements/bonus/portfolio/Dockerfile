FROM debian:bullseye

RUN apt update 
RUN apt install python3 python3-pip -y

WORKDIR /app
COPY tools .

RUN pip3 install -r requirements.txt

CMD ["python3", "app.py"]
