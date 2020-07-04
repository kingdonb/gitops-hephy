.PHONY: helm-release-crd fluxcd-ns flux-install all fluxctl-sync helm-operator-install sealed-secrets-key backup-key
.PHONY: restore-key uninstall-sealed-secrets uninstall-flux-helm-operator uninstall identity

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
		--set git.path="releases\,secrets" \
		--set git.url=git@github.com:kingdonb/gitops-hephy

sealed-secrets-key:
	kubectl create namespace adm
	kubectl apply -f sealed-secrets-key.yaml

helm-operator-install: sealed-secrets-key
	helm upgrade -i helm-operator fluxcd/helm-operator --wait \
		--namespace fluxcd \
		--set git.ssh.secretName=flux-git-deploy \
		--set git.pollInterval=5m \
		--set chartsSyncInterval=1m \
		--set helm.versions=v3

backup-key:
	kubectl get secret -n adm -l sealedsecrets.bitnami.com/sealed-secrets-key=active -o yaml --export > sealed-secrets-key.yaml

restore-key:
	kubectl replace secret -n adm sealed-secrets-key -f sealed-secrets-key.yaml
	kubectl delete pod -n adm -l app=sealed-secrets

uninstall-sealed-secrets:
	kubectl delete --ignore-not-found=true clusterrole/secrets-unsealer ns/adm clusterrolebinding/sealed-secrets
	kubectl delete --ignore-not-found=true crd sealedsecrets.bitnami.com

uninstall-flux-helm-operator:
	kubectl delete --ignore-not-found=true ns fluxcd
	kubectl delete --ignore-not-found=true crd helmreleases.helm.fluxcd.io

uninstall: uninstall-sealed-secrets uninstall-flux-helm-operator

identity:
	fluxctl identity
