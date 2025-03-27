# itmo_top_10_command_docker

## Cделать файл исполняемым:
```bash
chmod +x docker_cleanup.sh
```
## Запуск:
```bash
./docker_cleanup.sh
```


# Топ-10 команд для очистки Docker

## 1. Удаление всех остановленных контейнеров
```bash
docker container prune
```
## 2. Удаление всех неиспользуемых образов
```bash
docker image prune -a
```
## 3. Удаление всех неиспользуемых томов
```bash
docker volume prune
```
## 4. Удаление всех неиспользуемых сетей
```bash
docker network prune
```
## 5. Комплексная очистка системы
```bash
docker system prune -a --volumes
```
## 6. Остановка и удаление всех контейнеров
```bash
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
```
## 7. Удаление всех образов
```bash
docker rmi $(docker images -q)
```
## 8. Удаление всех томов
```bash
docker volume rm $(docker volume ls -q)
```
## 9. Удаление всех сетей
```bash
docker network rm $(docker network ls -q)
```
## 10. Удаление "висячих" образов (без тегов)
```bash
docker image prune
```

Этот список поможет эффективно очищать Docker от ненужных данных и поддерживать порядок в системе. 🚀
