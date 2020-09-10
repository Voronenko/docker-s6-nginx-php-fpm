build:
	docker build -t voronenko/docker-s6-nginx-php-fpm:latest .
push:
	docker push voronenko/docker-s6-nginx-php-fpm:latest
