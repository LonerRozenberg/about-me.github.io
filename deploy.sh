#!/bin/sh

# Собираем проект
npm run build

# Переходим в папку сборки
cd dist

# Инициализируем Git и пушим на GitHub
git init
git checkout -b main
git add -A
git commit -m "Deploy to GitHub Pages"

# Пушим в ветку gh-pages
git push -f git@github.com:LonerRozenberg/about-me.github.io.git main:gh-pages