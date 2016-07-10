build:
	cd app && composer install --prefer-dist --optimize-autoloader
	docker build -t symm/hello:$CIRCLE_SHA1 .
test:
	docker run symm/hello:$CIRCLE_SHA1 vendor/bin/behat
