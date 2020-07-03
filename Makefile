.PHONY: helm-release-crd fluxcd-ns flux-install all

all: flux-install

helm-release-crd:
	kubectl apply -f https://raw.githubusercontent.com/fluxcd/helm-operator/master/deploy/crds.yaml

fluxcd-ns:
	kubectl create namespace fluxcd

flux-install: helm-release-crd fluxcd-ns
	helm upgrade -i flux fluxcd/flux --wait \
		--namespace fluxcd \
		--set git.url=git@github.com:yebyen/helm-operator-get-started
