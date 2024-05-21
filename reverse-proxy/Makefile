version ?= local
.PHONY: docker-push
docker-push:
	docker buildx build --platform linux/amd64 -t sureshattaluri/suresh-reverse-proxy-nginx:${version} . --push

.PHONY: apply-namespace
apply-namespace:
	kubectl apply -f kubernetes/namespace.yaml

.PHONY: apply-deployment
apply-deployment:
	kubectl apply -f kubernetes/deployment.yaml

.PHONY: apply-service
apply-service:
	kubectl apply -f kubernetes/service.yaml

.PHONY: kube-apply
kube-apply: apply-namespace apply-deployment apply-service

.PHONY: kube-destory
kube-destory:
	kubectl delete service -n suresh-reverse-proxy-nginx suresh-reverse-proxy-nginx
	kubectl delete deployment -n suresh-reverse-proxy-nginx suresh-reverse-proxy-nginx
	kubectl delete namespace suresh-reverse-proxy-nginx
