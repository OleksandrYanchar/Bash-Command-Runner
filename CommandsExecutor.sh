#!/bin/bash

# File containing commands
commands_list_file="commands.txt"

# Check if the commands list file exists
if [ ! -f "$commands_list_file" ]; then
  echo "Commands list file '$commands_list_file' not found."
  exit 1
fi

failed_commands=0
failed_command_list=""

# Read and execute the commands from the file
while IFS= read -r command; do
  echo "Running command: $command"
  eval "$command"
  if [ $? -eq 0 ]; then
    echo "Command '$command' successfully executed"
  else
    echo "Error occurred while executing command: $command"
    ((failed_commands++))
    failed_command_list="$failed_command_list\n$command"

  echo "Total failed commands: $failed_commands"
  fi
done < "$commands_list_file"

echo "Running completed."
echo "Total failed commands: $failed_commands"

if [ $failed_commands -gt 0 ]; then
  echo -e "Failed commands:\n$failed_command_list"
fi

