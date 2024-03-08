.PHONY: build build-push push run stop

# Defaults can be overidden in optional .env
PORT=5001
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

delete-rcs:
	 docker run \
		-e AZURE_TENANT=$(AZURE_TENANT) \
		-e AZURE_SUBSCRIPTION=$(AZURE_SUBSCRIPTION) \
		-e REGISTRY_NAME=$(DOCKER_REGISTRY) \
		-e REGISTRY_USERNAME=$(ACR_USERNAME) \
		-e REGISTRY_PASSWORD=$(ACR_PASSWORD) \
		-e REPO=$(DOCKER_REPO) \
		-e TAG=$(TAG) \
		-e DRY_RUN=$(DRY_RUN) \
	desholmes/acr-rc-deleter:1.0.0

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
