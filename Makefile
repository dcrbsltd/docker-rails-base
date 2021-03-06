APP_NAME = rails
MAINTAINER = dcrbsltd
NAME = $(MAINTAINER)/$(APP_NAME)
PORT = 3000
VERSION = 1
ENV ?= local
DATE = $(shell date)
.PHONY: all build clean test tag_latest release ssl run

all: build

run:
	@bash ./bin/run

build:
	docker build -f Dockerfile -t $(NAME):$(VERSION) .

clean:
	@eval `docker-machine env default` ||:
	@docker kill `docker ps -a -q` ||:
	@docker rm -f `docker ps -a -q` ||:
	@docker rmi -f `docker images -q` ||:

test:
	env ENV=$(ENV) PORT=$(PORT) APP_NAME=$(APP_NAME) NAME=$(NAME) VERSION=$(VERSION) ./test

deploy:
	
tag_latest:
	docker tag -f $(NAME):$(VERSION) $(NAME):latest

docker_release: test tag_latest
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then echo "$(NAME) version $(VERSION) is not yet built. Please run 'make build'"; false; fi
	docker push $(NAME)
	@echo "*** Don't forget to create a tag. git tag rel-$(VERSION) && git push origin rel-$(VERSION)"

push:
	docker push $(NAME)

release:
	@echo "Enter commit message:"
	@read REPLY; \
	echo "${DATE} - $$REPLY" >> CHANGELOG; \
	git add --all; \
	git commit -m "$$REPLY"; \
	git push
