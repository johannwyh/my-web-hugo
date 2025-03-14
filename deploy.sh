#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo # if using a theme, replace by `hugo -t <yourtheme>`

# Go To Public folder
cd ..

cd johannwyh.github.io

cp -av ../my-web-hugo/public/* .

touch CNAME
echo "johann.wang" > CNAME

# Add changes to git.
git add . -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git pull
# Push source and build repos.
git push origin master

# Come Back
cd ..
