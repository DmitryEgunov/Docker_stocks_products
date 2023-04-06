# Склады и товары

## Для запуска приложения необходимо:

1. Смонтировать образ:

	docker image build . --tag="name of image"

2. Запустить контейнер:

	docker run --name="name of container" -d -p 8888:8080 "name of image"
