

#!/bin/bash

if [ "$1" == "create" ]; then
  mkdir -p main
  folders=("one" "two" "three" "four" "five" "six" "seven" "eight" "nine" "ten")
  
  for name in "${folders[@]}"; do
    if [ ! -d "main/$name" ]; then
      mkdir -p "main/$name"
      echo "This is folder $name" > "main/$name/info.txt"
      echo "Created info.txt in main/$name."
    else
      echo "Folder main/$name already exists."
    fi
  done

elif [ "$1" == "delete" ]; then
  folders=("one" "two" "three" "four" "five" "six" "seven" "eight" "nine" "ten")
  
  for name in "${folders[@]}"; do
    if [ -e "main/$name/info.txt" ]; then
      rm "main/$name/info.txt"
      echo "Deleted info.txt from main/$name."
    else
      echo "info.txt does not exist in main/$name."
    fi
  done

else
  echo "Use 'create' or 'delete'."
fi



