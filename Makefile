CIRCLE_SHA1 ?= latest
PROJECT = "symm/hello"

build:
	docker build -t $(PROJECT):$(CIRCLE_SHA1) .
test:
	docker run --rm $(PROJECT):$(CIRCLE_SHA1) bin/phpspec run
	docker run --rm $(PROJECT):$(CIRCLE_SHA1) bin/behat
