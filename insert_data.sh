#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

$PSQL "TRUNCATE TABLE games, teams"


echo "ca marche"

cat games.csv | while IFS=',' read year round win los wg lg
do 
#partie team
if [[ $year != "year" ]]
then
if [[ $win != $($PSQL "SELECT name FROM teams WHERE name='$win'") && $win != $($PSQL "SELECT name FROM teams WHERE name='$los'") ]]
  then 
  INSERT=$($PSQL "INSERT INTO teams(name) VALUES ('$win')")
fi
if [[ $los != $($PSQL "SELECT name FROM teams WHERE name='$win'") && $los != $($PSQL "SELECT name FROM teams WHERE name='$los'") ]]
then
  INSERT=$($PSQL "INSERT INTO teams(name) VALUES ('$los')")
fi 
fi
done

#partie games
cat games.csv | while IFS=',' read year round win los wg lg
do 
if [[ $year != "year" ]]
then
#get team id 
ID_WIN=$($PSQL "SELECT team_id FROM teams WHERE name='$win'")
ID_LOS=$($PSQL "SELECT team_id FROM teams WHERE name='$los'")
INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($year, '$round', $ID_WIN, $ID_LOS, $wg, $lg)")
fi
done
