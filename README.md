# otus-ndenisova_microservices
otus-ndenisova microservices repository

dz2
Сделано все кроме последних заданий со *


dz3
создана виртуалка через yc и docker-machine там
Создана сеть reddit и несколько контейнеров стартуют с ней и со своими алиасами,
видно как работает внутренний docker dns.
Выполнена проверка передачи переменных через --env.
Проведен анализ размера имиджа в зависимости от содержимого Dockerfile
Проверено использование volume для хранения данных между стартом и стопом контейнеров.

dz4

Проведена исследовательская работа про работу с сетями в контейнерах.
Установлен docker-compose. Весь проект затолкали в docker-compose.yml и поигрались с
переменными и сетями.

Имя формируется из папки(базовое), плюс по ключам-содержащимся в docker-compose.yml
Поменять можно, например
export COMPOSE_PROJECT_NAME=foo
или
docker-compose -p foo up

также можно оперировать с
container_name: my-name-container




GitLab CI/CD
===============
Создана ВМ с GitLab в docker на ней
Проделана практическая работа по изчению возможностей GitLab Ci/CD


Monitoring1
==============
Создана ВМ для развертывания docker образов с приложениями и prometheus
Выполнены ознакомительные действия с web интерфейсом prometheus
Добавлен node-exporter для например мониторинга за CPU.

Все docker образы собраны и запушены в GitHub
hub.docker.com/repository/docker/9057210458/{prometheus,ui,comment,post}

* Добавлен Makefile с таргетами побилдить и запушить образы.
