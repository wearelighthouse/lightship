.PHONY: artisan bash composer deploy down install migrate pull up

MAKEPATH := $(abspath $(lastword $(MAKEFILE_LIST)))
PWD := $(dir $(MAKEPATH))
PROJECT := $(shell basename $(CURDIR) | sed s/[\-_\ ]//g)

CMD=""

artisan:
	docker run -it --rm \
		-v $(PWD):/opt \
		-w /opt \
		--network=$(PROJECT)_network \
		wearelighthouse/php-fpm:5.6 \
		php artisan $(CMD)

bash:
	docker run -it --rm \
		-v $(PWD):/opt \
		-w /opt \
		--network=$(PROJECT)_network \
		wearelighthouse/php-fpm:5.6 \
		/bin/bash

composer:
	docker run -it --rm \
		-v $(PWD):/opt \
		-w /opt \
		--network=$(PROJECT)_network \
		wearelighthouse/php-fpm:5.6 \
		composer $(CMD)

deploy:
	make install
	make migrate

down:
	docker-compose down

install:
	make composer CMD=install

migrate:
	make artisan CMD="migrate:refresh --seed"

pull:
	docker-compose pull

up:
	docker-compose up -d
