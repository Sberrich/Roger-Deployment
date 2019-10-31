#!/bin/bash

clear

echo "..######..########..########.########..########..####..######..##.....##";
echo ".##....##.##.....##.##.......##.....##.##.....##..##..##....##.##.....##";
echo ".##.......##.....##.##.......##.....##.##.....##..##..##.......##.....##";
echo "..######..########..######...########..########...##..##.......#########";
echo ".......##.##.....##.##.......##...##...##...##....##..##.......##.....##";
echo ".##....##.##.....##.##.......##....##..##....##...##..##....##.##.....##";
echo "..######..########..########.##.....##.##.....##.####..######..##.....##";

read hi

num=1

while [[ $num != 0 ]]
do
	echo "*******************************"
	echo "*                             *"
	echo "*    1- Modify?               *"
	echo "*    2- Upload?               *"
	echo "*    0- Exit :(               *"
	echo "*                             *"
	read -p '*****Make your choice : ' num

	if [[ $num = 1 ]]
	then
		echo "please if /Users/sberrich/Desktop/site existe rename it"
		read hi
		mkdir /Users/sberrich/Desktop/site
		echo "you will find your files in /Users/sberrich/Desktop/site"
		echo "now you can modifie it"
		scp -P 2200 -r sberrich@10.12.254.253:/var/www/html/* /Users/sberrich/Desktop/site
		echo "done !!!"
		read hi
		clear
	elif [[ $num = 2 ]]
	then
		echo "you should set you web app in /Users/sberrich/Desktop/site"
		read hi
		scp -P 2200 -r /Users/sberrich/Desktop/site/* sberrich@10.12.254.253:/var/www/html/
		echo "done"
		read hi
		clear
	fi
done
