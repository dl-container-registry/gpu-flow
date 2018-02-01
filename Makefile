SHELL:=bash
CONTAINER_NAME:=willprice/gpu-flow
SINGULARITY_NAME:=gpu-flow.img
TAG:=


.PHONY: build
build:
	docker build -t $(CONTAINER_NAME) .

.PHONY: push
push:
	docker push $(CONTAINER_NAME)

.PHONY: singularity
singularity: $(SINGULARITY_NAME)

$(SINGULARITY_NAME):
	singularity  build $@ Singularity
