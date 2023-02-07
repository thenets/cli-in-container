IMAGE_TAG=thenets/cli-test

run: build
	@./run.sh testing argument passing

build:
	@cd src && docker build -t $(IMAGE_TAG) . 1>/dev/null 2>&1
