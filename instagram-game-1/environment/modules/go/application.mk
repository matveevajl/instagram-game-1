DOCKER_INSTA1_GO_PROJECT := insta1-go

.PHONY: dev-insta1-go-build
dev-insta1-go-build:
	@ ENVIRONMENT_DIR=$(ENVIRONMENT_DIR) \
	HOST_UID=$(HOST_UID) \
	HOST_GID=$(HOST_GID) \
	APP_PROJECT=$(GO_APP_PROJECT) \
	docker-compose -p $(DOCKER_INSTA1_GO_PROJECT) -f $(ENVIRONMENT_DIR)/modules/go/docker-compose.yml build

.PHONY: dev-insta1-go-run
dev-insta1-go-run:
	@ ENVIRONMENT_DIR=$(ENVIRONMENT_DIR) \
	HOST_UID=$(HOST_UID) \
	HOST_GID=$(HOST_GID) \
	APP_PROJECT=$(GO_APP_PROJECT) \
	docker-compose -p $(DOCKER_INSTA1_GO_PROJECT) -f $(ENVIRONMENT_DIR)/modules/go/docker-compose.yml up

