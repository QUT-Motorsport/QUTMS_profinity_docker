.PHONY: all help build run

all:
	@echo "make build then make run"

help: all

build:
	docker build -f Dockerfile -t qutms_profinity .

run:
	docker run \
	-it \
	--rm \
	--net=host \
	--mount type=bind,source=$(shell pwd)/Default.pprof,target=/root/Prohelion/Profinity/Profiles/Default.pprof \
	qutms_profinity	
