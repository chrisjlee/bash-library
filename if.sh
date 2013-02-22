#/bin/bash

# Check for root
function check_root() {
  if [ ! "`whoami`" = "root" ]
    then
	    echo "Root previlege required to run this script. Rerun as root."
    exit 1
  fi
}


# Basic prompt

function prompt_yes_or_no() {
  echo -n "Do you like foo bar? [y/n] [n]:"
  read $prompt
  if [ "$prompt! == "y" ]; then
    echo "You answered $prompt. Executing..."
  else
    echo "Aborting because you answered $prompt"
  fi
}


# Simple input menu

function prompt_menu() {
OPTIONS="Hello Quit"
select opt in $OPTIONS; do
  if [ "$opt" = "Quit" ]; then
    echo done
  exit
  elif [ "$opt" = "Hello" ]; then
    echo Hello World
  else
    clear
    echo bad option
  fi
done
}
