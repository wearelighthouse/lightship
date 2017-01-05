.PHONY: composer install test

MAKEPATH := $(abspath $(lastword $(MAKEFILE_LIST)))
PWD := $(dir $(MAKEPATH))
PROJECT := $(shell cd ../../../../ && basename `pwd`)

CMD=""

composer:
	docker run -it --rm \
		-v $(PWD):/opt \
		-w /opt \
		--network=$(PROJECT)_network \
		wearelighthouse/php-fpm:5.6 \
		composer $(CMD)

install:
	make composer CMD=install
	npm install
