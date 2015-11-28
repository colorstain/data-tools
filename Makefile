image_name := "colorstain/notebook"
project_name := "notebook"
project_dir := $(abspath $(lastword $(MAKEFILE_LIST)))

build:
	@docker build -t $(image_name) .

start:
	@docker run \
		-p 8888:8888 \
		-h $(project_name) \
		-v $(project_dir)/data:/data
