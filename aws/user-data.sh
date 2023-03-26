#!/bin/bash
sudo apt-get update
# завантаження nodejs
sudo apt-get --assume-yes install nodejs
# завантаження npm
sudo apt-get --assume-yes install npm
# перейти до /home/ubuntu
cd ~
# завантажити вихідний код серверу
git clone https://github.com/Lyoshas/simple-server.git
# перейти до /home/ubuntu/simple-server
cd simple-server
# завантажити залежності для коректної роботи серверу
npm i
# перейти до /home/ubuntu/simple-server/aws
cd aws
# скопіювати файл сервісу до /etc/systemd/system/my-server.service
sudo cp my-server.service /etc/systemd/system/my-server.service
# перезавантажити сервіси systemd
sudo systemctl daemon-reload
# запустити наш власний сервер, який буде слухати на порті 80
sudo systemctl start my-server
# запустити сервіс при кожному запуску системи
sudo systemctl enable my-server
