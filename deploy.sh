#!/usr/bin/env sh

set -e

vuepress build

cd .vuepress/dist

git init
git add -A
git commit -m "Deploy: $(date "+DATE: %Y-%m-%d TIME: %H:%M:%S")"
git push -f git@github.com:zudochkin/awesome-newsletters.git master:gh-pages

cd -
