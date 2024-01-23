FROM debian:bullseye

RUN apt update 
RUN apt install vsftpd -y

RUN (echo "bGlzdGVuPVlFUwphbm9ueW1vdXNfZW5hYmxlPVlFUwpsb2NhbF9lbmFibGU9WUVTCndyaXRlX2VuYWJsZT1ZRVMKYWxsb3dfd3JpdGVhYmxlX2Nocm9vdD1ZRVMKcGFtX3NlcnZpY2VfbmFtZT12c2Z0cGQKcGFzdl9lbmFibGU9WUVTCmxvY2FsX2VuYWJsZT1ZRVMKcGFzdl9taW5fcG9ydD00MDAwMApwYXN2X21heF9wb3J0PTQwMTAwCnBhc3ZfYWRkcl9yZXNvbHZlPVlFUwpwb3J0X3Byb21pc2N1b3VzPVlFUwp1c2VybGlzdF9lbmFibGU9WUVTCnVzZXJsaXN0X2Rlbnk9Tk8KdXNlcmxpc3RfZmlsZT0vZXRjL3ZzZnRwZC51c2VybGlzdApsaXN0ZW5fYWRkcmVzcz0wLjAuMC4wCnNlY3VyZV9jaHJvb3RfZGlyPS92YXIvcnVuL3ZzZnRwZC9lbXB0eQpsb2NhbF9yb290PS92YXIvd3d3L2h0bWwKeGZlcmxvZ19lbmFibGU9WUVTCnZzZnRwZF9sb2dfZmlsZT0vdmFyL2xvZy92c2Z0cGQubG9nCmxvZ19mdHBfcHJvdG9jb2w9bm8=" | base64 -d) > /etc/vsftpd.conf

RUN mkdir /home/lmongol
RUN useradd --home /home/lmongol lmongol
RUN mkdir -p /var/run/vsftpd/empty

RUN echo "lmongol" | tee -a /etc/vsftpd.userlist

WORKDIR /tmp
COPY tools/setup.sh .
RUN chmod +x setup.sh

EXPOSE 20
EXPOSE 21

CMD ["./setup.sh"]
