FROM debian:bullseye

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

# configuring tls
RUN sed -i 's/http {/http {\n\t\tserver {\n\t\t\t\tlisten             443 ssl;\n\t\t\t\tserver_name        tnaflix.com;\n\t\t\t\tssl_certificate    \/etc\/nginx\/certs\/cert.csr;\n\t\t\t\tssl_certificate_key \/etc\/nginx\/certs\/cert.key;\n\t\t\t\tssl_protocols      TLSv1.2 TLSv1.3;\n\t\t\t\tssl_ciphers        HIGH:!aNULL:!MD5;\n\t\t}/g' /etc/nginx/nginx.conf

# for testing  : curl -I -v --tlsv1.3 --tls-max 1.3 https://www.example.com/
EXPOSE 443/tcp

CMD ["nginx", "-g", "daemon off;"]
