FROM debian

# init dependencies
RUN apt update

# installing ngnix
RUN apt install openssl nginx -y

# health check
RUN nginx -v

#installing tls

# generating the openssl keys 
WORKDIR /etc/nginx/certs
           #self siging  # algo type    # no pass      # cert key   # certificate
RUN openssl req -x509 -newkey rsa:2048 -nodes -keyout cert.key -out cert.csr \
	-subj "/C=AT/ST=sbania/L=derbdban/O=lhorbax/CN=tnaflix.com"

RUN (echo 'c2VydmVyIHsKICAgIGxpc3RlbiA0NDMgc3NsOwogICAgc2VydmVyX25hbWUgaW5jZXB0aW9uOwogICAgc3NsX2NlcnRpZmljYXRlIC9ldGMvbmdpbngvY2VydHMvY2VydC5jc3I7CiAgICBzc2xfY2VydGlmaWNhdGVfa2V5IC9ldGMvbmdpbngvY2VydHMvY2VydC5rZXk7CiAgICBzc2xfcHJvdG9jb2xzIFRMU3YxLjIgVExTdjEuMzsKCiAgICByb290IC92YXIvd3d3L2h0bWw7CiAgICBpbmRleCBpbmRleC5waHA7CiAgICBsb2NhdGlvbiB+IFteL11cLnBocCgvfCQpIHsgCiAgICAgICAgdHJ5X2ZpbGVzICR1cmkgPTQwNDsKICAgICAgICBmYXN0Y2dpX3Bhc3Mgd29yZHByZXNzOjkwMDA7CiAgICAgICAgaW5jbHVkZSBmYXN0Y2dpX3BhcmFtczsKICAgICAgICBmYXN0Y2dpX3BhcmFtIFNDUklQVF9GSUxFTkFNRSAkZG9jdW1lbnRfcm9vdCRmYXN0Y2dpX3NjcmlwdF9uYW1lOwogICAgfQp9' | base64 -d) >> /etc/nginx/conf.d/nginx.conf

# for testing  curl -I -v --tlsv1.3 --tls-max 1.3 https://www.example.com/
EXPOSE 443/tcp

CMD ["nginx", "-g", "daemon off;"]
