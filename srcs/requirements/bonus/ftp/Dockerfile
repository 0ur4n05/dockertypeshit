FROM debian:bullseye

RUN apt update 
RUN apt install vsftpd -y

RUN (echo "bGlzdGVuPVlFUwpsaXN0ZW5faXB2Nj1OTwpjb25uZWN0X2Zyb21fcG9ydF8yMD1ZRVMKYW5vbnltb3VzX2VuYWJsZT1ZRVMKbG9jYWxfZW5hYmxlPVlFUwp3cml0ZV9lbmFibGU9WUVTCmNocm9vdF9sb2NhbF91c2VyPVlFUwphbGxvd193cml0ZWFibGVfY2hyb290PVlFUwpzZWN1cmVfY2hyb290X2Rpcj0vdmFyL3J1bi92c2Z0cGQvZW1wdHkKcGFtX3NlcnZpY2VfbmFtZT12c2Z0cGQKcGFzdl9lbmFibGU9WUVTCnBhc3ZfbWluX3BvcnQ9NDAwMDAKcGFzdl9tYXhfcG9ydD00NTAwMAp1c2VybGlzdF9lbmFibGU9WUVTCnVzZXJsaXN0X2ZpbGU9L2V0Yy92c2Z0cGQudXNlcmxpc3QKdXNlcmxpc3RfZGVueT1OTwpzZWN1cmVfY2hyb290X2Rpcj0vaG9tZS9sbW9uZ29s" | base64 -d) > /etc/vsftpd.conf

RUN adduser lmongol

# RUN echo "lmongol:${FTPPASWD}" | chpasswd
RUN echo "lmongol:khtek" | chpasswd
RUN echo "flag{hrelia}" > /home/lmongol/flag.txt

RUN echo "lmongol" | tee -a /etc/vsftpd.userlist

EXPOSE 20
EXPOSE 21

RUN mkdir -p /home/lmongol
RUN chown -R lmongol:lmongol /home/lmongol

CMD ["vsftpd"]
