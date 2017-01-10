.PHONY: bash down pull up

bash:
	docker run -it --rm \
		-v $(PWD):/opt \
		-w /opt \
		--network=$(PROJECT)_network \
		wearelighthouse/php-fpm:5.6 \
		/bin/bash

down:
	docker-compose down

pull:
	docker-compose pull
	docker rmi $(docker images --filter "dangling=true" -q --no-trunc)

up:
	docker-compose up -d
