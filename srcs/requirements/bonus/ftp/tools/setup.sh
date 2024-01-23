#!/bin/bash

echo "lmongol:${FTPPASSWD}" | chpasswd
vsftpd /etc/vsftpd.conf
