build:
	cd app && composer install
	docker build -t symm/hello:$CIRCLE_SHA1 .
	docker run symm/hello:$CIRCLE_SHA1 vendor/bin/behat
