.PHONY: bash down up

bash:
	docker run -it --rm \
		-v $(PWD):/opt \
		-w /opt \
		--network=$(PROJECT)_network \
		wearelighthouse/php-fpm:5.6 \
		/bin/bash

down:
	docker-compose down

up:
	docker-compose up -d
