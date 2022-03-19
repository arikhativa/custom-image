
build:
	sudo docker build -t yoav:lastest .

run:
	docker run --rm --user yoav --name yoav -dit yoav:lastest /bin/bash

stop:
	docker rm -f yoav

re: stop build run
	@true