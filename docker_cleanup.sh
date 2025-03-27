#!/bin/bash

echo "Остановка всех запущенных контейнеров..."
docker stop $(docker ps -aq)

echo "Удаление всех контейнеров..."
docker rm $(docker ps -aq)

echo "Удаление всех неиспользуемых образов..."
docker image prune -a -f

echo "Удаление всех неиспользуемых томов..."
docker volume prune -f

echo "Удаление всех неиспользуемых сетей..."
docker network prune -f

echo "Очистка завершена."
