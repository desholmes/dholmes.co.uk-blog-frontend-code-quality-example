.PHONY: build build-push push run stop

# Defaults can be overidden in optional .env
PORT=5000
DOCKER_REGISTRY=dholmes.azurecr.io
DOCKER_REPO=hello-world
DOCKER_TAG=$(shell node -pe "require('./package.json').version")

# optional include
-include .env

build:
	docker build -t $(DOCKER_REGISTRY)/$(DOCKER_REPO):$(DOCKER_TAG) .

build-push:
	make build
	make push

push:
	docker push $(DOCKER_REGISTRY)/$(DOCKER_REPO):$(DOCKER_TAG)

run:
	@docker run \
		-p $(PORT):$(PORT) \
		-e PORT=$(PORT) \
		--pid=host \
		--name $(DOCKER_REPO) \
	$(DOCKER_REGISTRY)/$(DOCKER_REPO):$(DOCKER_TAG)

stop:
	@docker container rm $(DOCKER_REPO)
