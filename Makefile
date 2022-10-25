.PHONY: all help build run

all:
	@echo "make build then make run [optional: command=bash]"

help: all

build:
	docker build -f Dockerfile -t qutms_profinity .

run:
	docker run \
	-it \
	--rm \
	--net=host \
	--mount type=bind,source=$(shell pwd)/Default.pprof,target=/root/Prohelion/Profinity/Profiles/Default.pprof \
	--mount type=bind,source=$(shell pwd)/Config.yaml,target=/root/Prohelion/Profinity/Config/Config.yaml \
	qutms_profinity	\
	$(command)
