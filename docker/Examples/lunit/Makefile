include .env

DOCKER_BUILD_ARGS := \
	--build-arg BASE_TAG=${DOCKER_BASE_TAG} \
	--build-arg NEXUS_USERNAME=${LUNIT_NEXUS_USERNAME} \
	--build-arg NEXUS_PASSWORD=${LUNIT_NEXUS_PASSWORD}

.PHONY: build-docker
build-docker:
	docker build $(DOCKER_BUILD_ARGS) \
	--build-arg USER_ID=${UID} \
	--build-arg USER_NAME=${USER} \
	--build-arg USER_HOME=${HOME} \
	--build-arg GROUP_ID=9001 \
	--build-arg GROUP_NAME=user \
	--build-arg GIT_USERNAME=${GIT_USERNAME} \
	--build-arg GIT_EMAIL=${GIT_EMAIL} \
	--target base \
	--tag ${USER}/${CUSTOM_IMAGE_TAG} \
	-f Dockerfile \
	.

.PHONY: run-docker
run-docker:
	docker run -itd \
	-w ${HOME}/workspace/ \
	-v ${PWD}:${HOME}/workspace/ \
	--shm-size=64g \
	--gpus all \
	--name ${USER}_engine_inference \
	${USER}/$(CUSTOM_IMAGE_TAG) \
	zsh
