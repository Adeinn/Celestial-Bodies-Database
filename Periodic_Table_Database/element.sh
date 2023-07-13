#!/bin/bash 


PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [ -z "$1" ]; then
echo Please provide an element as an argument.

elif [[ $1 =~ ^[0-9]+$ ]] ; then
AN=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number=$1")
SYMB=$($PSQL "SELECT symbol FROM elements WHERE atomic_number=$1")
NM=$($PSQL "SELECT name FROM elements WHERE atomic_number=$1")
TP=$($PSQL "SELECT type FROM properties FULL JOIN elements USING (atomic_number) FULL JOIN types USING(type_id) WHERE atomic_number=$1")
MASS=$($PSQL "SELECT atomic_mass FROM properties FULL JOIN elements USING (atomic_number) WHERE atomic_number=$1")
MP=$($PSQL "SELECT melting_point_celsius FROM properties FULL JOIN elements USING (atomic_number) WHERE atomic_number=$1")
BP=$($PSQL "SELECT boiling_point_celsius FROM properties FULL JOIN elements USING (atomic_number) WHERE atomic_number=$1")

if [ -z "$AN" ]; then
echo "I could not find that element in the database."
else 
echo "The element with atomic number $AN is $NM ($SYMB). It's a $TP, with a mass of $MASS amu. $NM has a melting point of $MP celsius and a boiling point of $BP celsius."
fi 

elif [ ${#1} -gt 3 ]; then
AN=$($PSQL "SELECT atomic_number FROM elements WHERE name='$1'")
SYMB=$($PSQL "SELECT symbol FROM elements WHERE name='$1'")
NM=$($PSQL "SELECT name FROM elements WHERE name='$1'")
TP=$($PSQL "SELECT type FROM properties FULL JOIN elements USING (atomic_number) FULL JOIN types USING(type_id) WHERE name='$1'")
MASS=$($PSQL "SELECT atomic_mass FROM properties FULL JOIN elements USING (atomic_number) WHERE name='$1'")
MP=$($PSQL "SELECT melting_point_celsius FROM properties FULL JOIN elements USING (atomic_number) WHERE name='$1'")
BP=$($PSQL "SELECT boiling_point_celsius FROM properties FULL JOIN elements USING (atomic_number) WHERE name='$1'")

if [ -z "$AN" ]; then
echo "I could not find that element in the database."
else 
echo "The element with atomic number $AN is $NM ($SYMB). It's a $TP, with a mass of $MASS amu. $NM has a melting point of $MP celsius and a boiling point of $BP celsius."
fi 

elif [ ${#1} -lt 3 ];then 
AN=$($PSQL "SELECT atomic_number FROM elements WHERE symbol='$1'")
SYMB=$($PSQL "SELECT symbol FROM elements WHERE symbol='$1'")
NM=$($PSQL "SELECT name FROM elements WHERE symbol='$1'")
TP=$($PSQL "SELECT type FROM properties FULL JOIN elements USING (atomic_number) FULL JOIN types USING(type_id) WHERE symbol='$1'")
MASS=$($PSQL "SELECT atomic_mass FROM properties FULL JOIN elements USING (atomic_number) WHERE symbol='$1'")
MP=$($PSQL "SELECT melting_point_celsius FROM properties FULL JOIN elements USING (atomic_number) WHERE symbol='$1'")
BP=$($PSQL "SELECT boiling_point_celsius FROM properties FULL JOIN elements USING (atomic_number) WHERE symbol='$1'")

if [ -z "$AN" ]; then
echo "I could not find that element in the database."
else 
echo "The element with atomic number $AN is $NM ($SYMB). It's a $TP, with a mass of $MASS amu. $NM has a melting point of $MP celsius and a boiling point of $BP celsius."
fi 

fi 
