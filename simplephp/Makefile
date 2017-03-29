.PHONY: bash composer down install pull up

MAKEPATH := $(abspath $(lastword $(MAKEFILE_LIST)))
PWD := $(dir $(MAKEPATH))
PROJECT := $(shell basename $(CURDIR))

CMD=""

bash:
	docker run -it --rm \
		-v $(PWD):/opt \
		-w /opt \
		--network=$(PROJECT)_network \
		wearelighthouse/php-fpm:latest \
		/bin/bash

composer:
	docker run -it --rm \
		-v $(PWD):/opt \
		-w /opt \
		--network=$(PROJECT)_network \
		wearelighthouse/php-fpm:latest \
		composer $(CMD)

down:
	docker-compose down

install:
	make composer CMD=install \
    npm install

pull:
	docker-compose pull
	docker rmi $(docker images --filter "dangling=true" -q --no-trunc)

up:
	docker-compose up -d
