#!/bin/bash
clear
dt=$(date +"%d/%m/%Y à %Hh%M")
echo "Bienvenue dans le jeu de la chance"
read -r;
echo "A chaque fois, 3 coffres apparaitrons, mais attention! 1 des 3 coffres est empoisonné et vous fera perdre! Bonne chance"
read -r;
echo "Entrez votre nom de joueur:"
read -r pseudo

nbr=1
score=0
while ((nbr!=0))
do
echo $pseudo ", choisis le coffre de ton choix :"
echo " ##### ##### ##### "
echo " # 1 # # 2 # # 3 # "
echo " ##### ##### ##### "
read -r;

r=$(($RANDOM % 4))

if [ "$r" = 1 ]; then
echo " Bien joué!!"
let "score++"


elif [ "$r" = 2 ]; then
echo "Bien joué!!"
let "score++"


elif [ "$r" = 0 ]; then
echo "Bien joué!!"
let "score++"


else
echo "Perdu!!" $pseudo ", tu as gagné" $score "point(s)"
echo $pseudo "as gagné" $score "point(s) le" $dt >> score.txt
echo "        "
echo "        "
echo "_______________________"
echo " HISTORIQUE DES SCORES:"
echo "-----------------------"
cat score.txt
nbr=0
fi



done

