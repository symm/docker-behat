CIRCLE_SHA1 ?= latest
PROJECT = "symm/hello"

build:
	cd app && composer install --prefer-dist --optimize-autoloader
	docker build -t $(PROJECT):$(CIRCLE_SHA1) .
test:
	docker run --rm $(PROJECT):$(CIRCLE_SHA1) vendor/bin/phpspec run
	docker run --rm $(PROJECT):$(CIRCLE_SHA1) vendor/bin/behat
