.PHONY: bash composer down install pull up

MAKEPATH := $(abspath $(lastword $(MAKEFILE_LIST)))
PWD := $(dir $(MAKEPATH))
PROJECT := $(shell basename $(CURDIR) | sed s/[\-_\ ]//g)

CMD=""

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

down:
	docker-compose down

install:
	make composer CMD=install

pull:
	docker-compose pull
	docker rmi $(docker images --filter "dangling=true" -q --no-trunc)

up:
	docker-compose up -d
