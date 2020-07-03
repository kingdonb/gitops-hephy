.PHONY: helm-release-crd fluxcd-ns flux-install all fluxctl-sync helm-operator-install

fluxctl-sync:
	fluxctl sync

all: flux-install helm-operator-install

helm-release-crd:
	kubectl apply -f https://raw.githubusercontent.com/fluxcd/helm-operator/master/deploy/crds.yaml

fluxcd-ns:
	kubectl create namespace fluxcd

flux-install: helm-release-crd fluxcd-ns
	helm upgrade -i flux fluxcd/flux --wait \
		--namespace fluxcd \
		--set git.url=git@github.com:yebyen/helm-operator-get-started

helm-operator-install:
	helm upgrade -i helm-operator fluxcd/helm-operator --wait \
		--namespace fluxcd \
		--set git.ssh.secretName=flux-git-deploy \
		--set helm.versions=v3
