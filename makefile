curdir := $(shell pwd)

build:
	docker build -t c_dev_env .
run:
	docker run --rm -it --mount type=bind,source=$(curdir)/,target=/root/clang --name "my_dev_env" --cap-add=SYS_PTRACE --security-opt="seccomp=unconfined" c_dev_env /bin/bash

# gcc -o bin/ src/