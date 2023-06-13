#!/bin/bash

directory="./"  

find . -type f ! -name "README.md" -exec chmod +x {} \;

for file in *; do
    commit_message="${file%.*}"

    git add "$file"
    git commit -m "$commit_message"
done


git push 