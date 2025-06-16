#!/bin/sh

# Удаляем старую сборку
rm -rf dist

# Собираем проект
npm run build

# Создаем CNAME в корне перед сборкой
echo 'about-me.github.io' > public/CNAME

# Переходим в папку сборки
cd dist

# Инициализируем Git
git init
git checkout -b gh-pages
git add -A
git commit -m "Deploy to GitHub Pages"

# Пушим в ветку gh-pages
git push -f git@github.com:LonerRozenberg/about-me.github.io.git gh-pages