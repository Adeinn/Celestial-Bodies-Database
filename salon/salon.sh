#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=salon -t -c"

echo -e "\n~~~~~ MY SALON ~~~~~\n"

echo -e "\nWelcome to My Salon, how can I help you?"

#function service 
CHOOSE_SERVICE(){
echo -e "\n1) cut\n2) color\n3) perm\n4) style\n5) trim"

read SERVICE_ID_SELECTED

#service is not a number
if [[ ! $SERVICE_ID_SELECTED  =~ ^[1-5]$ ]]
then 
echo -e "\nI could not find that service. What would you like today?"
CHOOSE_SERVICE
else 

echo -e "\nWhat's your phone number?"

read CUSTOMER_PHONE

MATCH_PHONE=$($PSQL "SELECT phone FROM customers WHERE phone='$CUSTOMER_PHONE'")
   
if [[ -z $MATCH_PHONE ]]
    then 
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME 
INSERT_NEW_CUSTOMER=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
TAKE_APPOINTMENT $CUSTOMER_PHONE $CUSTOMER_NAME $SERVICE_ID_SELECTED
    else 
CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")  
TAKE_APPOINTMENT $CUSTOMER_PHONE $CUSTOMER_NAME $SERVICE_ID_SELECTED
    fi
fi }


#take appointments function
TAKE_APPOINTMENT(){

SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$3")
CUSTOM_ID=$($PSQL "SELECT customer_id FROM customers WHERE name='$2'")

echo -e "\nWhat time would you like your $SERVICE_NAME, $2?"

read SERVICE_TIME

TAKE_APP=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOM_ID, $3, '$SERVICE_TIME')")

echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $2."

}

CHOOSE_SERVICE
