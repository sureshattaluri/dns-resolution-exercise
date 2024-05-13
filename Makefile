.PHONY: build
build:
	docker build -t my-nginx .

.PHONY: run
run:
	docker run -d -p 8080:80 my-nginx
