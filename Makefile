.PHONY: all image build init

DOCKER_IMAGE = gitbook

all: image build

image:
	docker build --rm=true --force-rm=true --no-cache --tag $(DOCKER_IMAGE) .

build:
	docker run --rm=true --tty=true --interactive=true --volume=`pwd`:/code --name $(DOCKER_IMAGE) $(DOCKER_IMAGE) "gitbook" "build"

init:
	docker run --rm=true --tty=true --interactive=true --volume=`pwd`:/code --name $(DOCKER_IMAGE) $(DOCKER_IMAGE) "gitbook" "init"
