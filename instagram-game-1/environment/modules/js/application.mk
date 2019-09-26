DOCKER_INSTA1_JS_PROJECT := insta1-js

.PHONY: dev-insta1-js-build
dev-insta1-js-build:
	@ ENVIRONMENT_DIR=$(ENVIRONMENT_DIR) \
	HOST_UID=$(HOST_UID) \
	HOST_GID=$(HOST_GID) \
	APP_PROJECT=$(JS_APP_PROJECT) \
	docker-compose -p $(DOCKER_INSTA1_JS_PROJECT) -f $(ENVIRONMENT_DIR)/modules/js/docker-compose.yml build

.PHONY: dev-insta1-js-run
dev-insta1-js-run:
	@ ENVIRONMENT_DIR=$(ENVIRONMENT_DIR) \
	HOST_UID=$(HOST_UID) \
	HOST_GID=$(HOST_GID) \
	APP_PROJECT=$(JS_APP_PROJECT) \
	docker-compose -p $(DOCKER_INSTA1_JS_PROJECT) -f $(ENVIRONMENT_DIR)/modules/js/docker-compose.yml up
