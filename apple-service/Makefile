version ?= local
.PHONY: docker-push
docker-push:
	docker buildx build --platform linux/amd64 -t sureshattaluri/apple-suresh-nginx:${version} . --push
