version ?= local
.PHONY: docker-build
docker-build:
	docker buildx build --platform linux/amd64 -t sureshattaluri/my-nginx:${version} . --push

.PHONY: run
run:
	docker run -d -p 8080:80 my-nginx

.PHONY: apply-deployment
apply-deployment:
	kubectl apply -f kubernetes/my-nginx-deployment.yaml

.PHONY: apply-service
apply-service:
	kubectl apply -f kubernetes/my-nginx-service.yaml

.PHONY: kube-apply
kube-apply: apply-deployment apply-service

