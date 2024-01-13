#!/bin/sh

createvolumes () {
	echo "[+] = creating"
	mkdir -p ~/data/db ~/data/wp
}

deletevolumes (){
	echo "[+] = cleaning"
	rm -rf ~/data/db ~/data/wp
}

if [ "$1" == "clean" ]
then 
	deletevolumes 
fi
if [ "$1" == "setup" ] 
then 
	createvolumes
fi
