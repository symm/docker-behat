CIRCLE_SHA1 ?= latest
PROJECT = "symm/hello"

build:
	cd app && composer install --prefer-dist --optimize-autoloader
test: phpspec behat
phpspec:
	cd app && bin/phpspec run
behat:
	cd app && bin/behat
docker-build:
	cd app && composer install --prefer-dist --optimize-autoloader
	docker build -t $(PROJECT):$(CIRCLE_SHA1) .
docker-test:
	docker run --rm $(PROJECT):$(CIRCLE_SHA1) bin/phpspec run
	docker run --rm $(PROJECT):$(CIRCLE_SHA1) bin/behat
