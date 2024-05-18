version ?= local
.PHONY: docker-push
docker-push:
	docker buildx build --platform linux/amd64 -t sureshattaluri/apple-suresh-nginx:${version} . --push

.PHONY: prod-namespace
prod-namespace:
	kubectl apply -f prod/namespace.yaml

.PHONY: prod-apply-deployment
prod-apply-deployment:
	kubectl apply -f prod/deployment.yaml

.PHONY: prod-apply-service
prod-apply-service:
	kubectl apply -f prod/service.yaml

.PHONY: prod-kube-apply
prod-kube-apply: prod-namespace prod-apply-deployment prod-apply-service

.PHONY: dev-namespace
dev-namespace:
	kubectl apply -f dev/namespace.yaml

.PHONY: dev-apply-deployment
dev-apply-deployment:
	kubectl apply -f dev/deployment.yaml

.PHONY: dev-apply-service
dev-apply-service:
	kubectl apply -f dev/service.yaml

.PHONY: dev-kube-apply
dev-kube-apply: dev-namespace dev-apply-deployment dev-apply-service

.PHONY: prod-kube-destory
prod-kube-destory:
	kubectl delete service -n apple-nginx apple-nginx
	kubectl delete deployment -n apple-nginx apple-nginx
	kubectl delete namespace apple-nginx

.PHONY: dev-kube-destory
dev-kube-destory:
	kubectl delete service -n apple-nginx-dev apple-nginx-dev
	kubectl delete deployment -n apple-nginx-dev apple-nginx-dev
	kubectl delete namespace apple-nginx-dev
