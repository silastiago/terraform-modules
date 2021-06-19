#!/bin/bash


expect -c "
spawn prosodyctl cert generate $1

expect \"*):*\"
send \"2048\r\"
expect \"*):*\"
send \"BR\r\"
expect \"*):*\"
send \"AWS\r\"
expect \"*):*\"
send \"URCA\r\"
expect \"*):*\"
send \"ASR\r\"
expect \"*):*\"
send \"$1\r\"
expect \"*):*\"
send \"$1\r\"

interact
"
