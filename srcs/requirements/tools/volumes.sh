#!/bin/sh

createvolumes () {
	echo "[+] = creating"
	# mkdir -p /home/root/data/db /home/root/data/wp
}

deletevolumes (){
	echo "[+] = cleaning"
	# rm -rf /home/root/data/db /home/root/data/wp
}

if [ "$1" == "clean" ]
then 
	deletevolumes 
fi
if [ "$1" == "setup" ] 
then 
	createvolumes
fi
