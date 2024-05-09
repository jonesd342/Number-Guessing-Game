#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess --tuples-only --no-align -c"

echo "Enter your username:"
read USERNAME

NAMECHECK=$($PSQL "SELECT * FROM users WHERE username='$USERNAME'")
if [[ -z $NAMECHECK ]]
then
  # user is new
  NEW_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  # returning user
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING(user_id) WHERE username='$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# the game begins
RAND_NUM=$((RANDOM % 1000 + 1))
echo "Guess the secret number between 1 and 1000:"
read GUESS

while [[ ! $GUESS =~ ^[0-9]+$ ]]
do
# guess is not a valid number
    echo "That is not an integer, guess again:"
    read GUESS
done

TRIES=1

while [ ! $GUESS -eq $RAND_NUM ]
do
    # check if guess is correct
    if [[ $GUESS -gt $RAND_NUM ]]
    then
      echo "It's lower than that, guess again:"
      read GUESS
    elif [[ $GUESS -lt $RAND_NUM ]]
    then
      echo "It's higher than that, guess again:"
      read GUESS
    fi
    
    while [[ ! $GUESS =~ ^[0-9]+$ ]]
    do
    # guess is not a valid number
        echo "That is not an integer, guess again:"
        read GUESS
    done
  TRIES=$(expr $TRIES + 1)
done

# user has guessed the random number
echo "You guessed it in $TRIES tries. The secret number was $RAND_NUM. Nice job!"
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
INSERT_GAME=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $TRIES)")
