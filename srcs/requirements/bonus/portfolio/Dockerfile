FROM debian

RUN apt update 
RUN apt install python3 python3-pip -y
RUN pip3 install flask --break-system-packages 

WORKDIR /app
COPY /tools/* .

CMD ["python3", "app.py"]
