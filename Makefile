IMAGE_NAME := roswell

install:
	ros install

docker.build:
	docker build -t $(IMAGE_NAME) .

docker.run:
	docker run -it --rm $(IMAGE_NAME)

docker.run.main:
	docker run --rm -v $(PWD):/home $(IMAGE_NAME) ros ./src/main.lisp

docker.run.test:
	docker run --rm -v $(PWD):/home $(IMAGE_NAME) ros ./test/test_all.lisp

docker.shell:
	docker run -it --rm $(IMAGE_NAME) zsh
