#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=postgres -t --no-align -c"
PSQLQ="psql --username=freecodecamp --dbname=postgres -q -c"

echo Enter your username:

read USERNAME

CONNEXION (){
  CHECK=$($PSQL "SELECT name FROM name WHERE name='$USERNAME'")
if [[ $CHECK =~ $USERNAME ]] 
 then
PLAYED=$($PSQL "SELECT games FROM name WHERE name='$USERNAME'")
RECORD=$($PSQL "SELECT best_game FROM name WHERE name='$USERNAME'")
echo "Welcome back, $USERNAME! You have played $PLAYED games, and your best game took $RECORD guesses."
else 
$PSQLQ "INSERT INTO name(name, games) VALUES ('$USERNAME', 0)"
PLAYED=$($PSQL "SELECT games FROM name WHERE name='$USERNAME'")
echo "Welcome, $USERNAME! It looks like this is your first time here."
fi 
NP=$(($PLAYED + 1))
$PSQLQ "UPDATE name SET games=$NP WHERE name='$USERNAME'"
}

GAME (){
CONNEXION
#definir un nombre aleatoir
echo "Guess the secret number between 1 and 1000:"
ALEA=$(( $RANDOM % 1000 + 1 ))
read NUMBER
COUNTER=1
until [[ $NUMBER == $ALEA ]]; do
  COUNTER=$(($COUNTER + 1))
if [[ $NUMBER =~ ^[0-9]+$ ]] 
 then
 if [[ $NUMBER -gt $ALEA ]] 
 then 
  echo "It's lower than that, guess again:"
  read NUMBER ;
 else 
 echo "It's higher than that, guess again:"
 read NUMBER ; 
 fi ;
 else 
 echo "That is not an integer, guess again:"
 read NUMBER ;
 fi 
done
#comparer le nombre de counter par rapport au counter precedent 
if [[ -z $RECORD ]]
then 
$PSQLQ "UPDATE name SET best_game=$COUNTER WHERE name='$USERNAME'"
elif [[ $COUNTER -lt $RECORD ]]
  then 
     $PSQLQ "UPDATE name SET best_game=$COUNTER WHERE name='$USERNAME'";
fi
$PSQLQ "UPDATE name SET games=$NP WHERE name='$USERNAME'"
echo "You guessed it in $COUNTER tries. The secret number was $ALEA. Nice job!"
}

GAME 
