#!/bin/sh

lein deps
mkdir -p releases
zip -r releases/{{name}}-`date +"%Y-%m-%d_%H-%M"`.zip \
    . \
    -x "./.git/*" \
    -x "releases/*"

echo
echo "Don't forget to upload the zipfile"
echo " to https://github.com/<your-account-name>/<repo-name>/downloads"
echo `ls -t releases/{{name}}-*.zip | head -n1`
echo
