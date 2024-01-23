#!/bin/bash

createvolumes () {
	echo "[+] = creating"
	mkdir -p /home/mlalama/data/db /home/mlalama/data/wp
}

deletevolumes (){
	echo "[+] = cleaning"
	rm -rf /home/mlalama/data/db /home/mlalama/data/wp
}

if [ "$1" == "clean" ]
then 
	deletevolumes 
fi
if [ "$1" == "setup" ] 
then 
	createvolumes
fi
