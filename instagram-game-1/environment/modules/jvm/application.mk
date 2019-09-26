DOCKER_INSTA1_GROOVY_PROJECT := insta1-groovy
DOCKER_INSTA1_KOTLIN_PROJECT := insta1-kotlin

.PHONY: dev-insta1-groovy-build
dev-insta1-groovy-build:
	@ ENVIRONMENT_DIR=$(ENVIRONMENT_DIR) \
	HOST_UID=$(HOST_UID) \
	HOST_GID=$(HOST_GID) \
	APP_PROJECT=$(GROOVY_APP_PROJECT) \
	docker-compose -p $(DOCKER_INSTA1_GROOVY_PROJECT) -f $(ENVIRONMENT_DIR)/modules/jvm/docker-compose.yml build

.PHONY: dev-insta1-groovy-run
dev-insta1-groovy-run:
	@ ENVIRONMENT_DIR=$(ENVIRONMENT_DIR) \
	HOST_UID=$(HOST_UID) \
	HOST_GID=$(HOST_GID) \
	APP_PROJECT=$(GROOVY_APP_PROJECT) \
	docker-compose -p $(DOCKER_INSTA1_GROOVY_PROJECT) -f $(ENVIRONMENT_DIR)/modules/jvm/docker-compose.yml up

.PHONY: dev-insta1-kotlin-build
dev-insta1-kotlin-build:
	@ ENVIRONMENT_DIR=$(ENVIRONMENT_DIR) \
	HOST_UID=$(HOST_UID) \
	HOST_GID=$(HOST_GID) \
	APP_PROJECT=$(KOTLIN_APP_PROJECT) \
	docker-compose -p $(DOCKER_INSTA1_KOTLIN_PROJECT) -f $(ENVIRONMENT_DIR)/modules/jvm/docker-compose.yml build

.PHONY: dev-insta1-kotlin-run
dev-insta1-kotlin-run:
	@ ENVIRONMENT_DIR=$(ENVIRONMENT_DIR) \
	HOST_UID=$(HOST_UID) \
	HOST_GID=$(HOST_GID) \
	APP_PROJECT=$(KOTLIN_APP_PROJECT) \
	docker-compose -p $(DOCKER_INSTA1_KOTLIN_PROJECT) -f $(ENVIRONMENT_DIR)/modules/jvm/docker-compose.yml up


