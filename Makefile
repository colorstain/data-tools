image_name := "colorstain/notebook"
project_name := "notebook"
project_dir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
notebook_port := 8888

build:
	@docker build -t $(image_name) .

start:
	@docker run \
		-p $(notebook_port):$(notebook_port) \
		-h $(project_name) \
		-v $(project_dir)/data:/opt/data \
		-d $(image_name)
	echo http://$(docker-machine ip default):$(notebook_port)
