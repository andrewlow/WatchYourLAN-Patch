#
# WatchYourLAN + patches
#
NAME=wyl
ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
UPSTREAM=aceberg/watchyourlan

build:
	docker pull $(UPSTREAM)
	docker build . --tag $(NAME)

run:
	docker run \
		-it \
		--rm \
		--name $(NAME) \
		-p 8840:8840 \
		-v $(ROOT_DIR)/config:/config \
		$(NAME) -d /config

