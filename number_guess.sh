#!/bin/bash

POSTGRES_USERNAME="freecodecamp"
POSTGRES_DB="number_guessing_game"
PSQL="psql --username=${POSTGRES_USERNAME} --dbname=${POSTGRES_DB}"

# Function to execute SQL query silently
execute_query_silently() {
  local query="$1"
  $PSQL -t -q -c "$query" > /dev/null
}

# Function to get user data from the database
get_user_data() {
  local username=$1
  local query="SELECT games_played, best_game FROM users WHERE username='$username';"
  user_data=$($PSQL -t -q -c "$query" | xargs)
  echo "$user_data"
}

# Function to update user data in the database
update_user_data() {
  local username=$1
  local games_played=$2
  local best_game=$3

  local exists_query="SELECT 1 FROM users WHERE username='$username';"
  local user_exists=$($PSQL -t -q -c "$exists_query" | xargs)

  if [ -z "$user_exists" ]; then
    local insert_query="INSERT INTO users (username, games_played, best_game) VALUES ('$username', $games_played, $best_game);"
    execute_query_silently "$insert_query"
  else
    local update_query="UPDATE users SET games_played=$games_played, best_game=$best_game WHERE username='$username';"
    execute_query_silently "$update_query"
  fi
}

echo "Enter your username:"
read username

# Ensure username is 22 characters or less
if [ ${#username} -gt 22 ]; then
  echo "Username must be 22 characters or less."
  exit 1
fi

# Read user data
user_data=$(get_user_data "$username")

# Handle potential empty data from database
if [ -n "$user_data" ]; then
  IFS=" " read -r games_played best_game <<< "$user_data"
  games_played=$(echo "$games_played" | xargs)
  best_game=$(echo "$best_game" | xargs)
  
  # Check if best_game is still empty and set a default value
  if [ -z "$best_game" ]; then
    best_game=1000
  fi
  
  echo -e "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses.\n"
else
  games_played=0
  best_game=1000
  echo -e "Welcome, $username! It looks like this is your first time here.\n"
fi

# Generate a random secret number between 1 and 1000
secret_number=$((RANDOM % 1000 + 1))
number_of_guesses=0

# Start the guessing game
while true; do
  echo -e "Guess the secret number between 1 and 1000: "
  read guess

  # Validate the guess
  if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi

  guess=$((guess))
  number_of_guesses=$((number_of_guesses + 1))

  if [ "$guess" -lt "$secret_number" ]; then
    echo "It's higher than that, guess again:"
  elif [ "$guess" -gt "$secret_number" ]; then
    echo "It's lower than that, guess again:"
  else
    games_played=$((games_played + 1))
    if [ "$number_of_guesses" -lt "$best_game" ]; then
      best_game=$number_of_guesses
    fi
    update_user_data "$username" "$games_played" "$best_game"
    printf "You guessed it in %d tries. The secret number was %d. Nice job!\c" "$number_of_guesses" "$secret_number"
    exit 0
  fi
done
