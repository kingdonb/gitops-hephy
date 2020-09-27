.PHONY: flux-install all fluxctl-sync helm-operator-install sealed-secrets-key backup-key
.PHONY: restore-key uninstall-sealed-secrets uninstall-flux-helm-operator uninstall identity
.PHONY: helm-release-crd

NAMESPACE := kingdonb
ADM_NAMESPACE := kingdonb

fluxctl-sync:
	fluxctl sync

all: flux-install identity helm-operator-install

fluxcd-repo:
	helm repo add fluxcd https://charts.fluxcd.io
	touch fluxcd-repo

helm-release-crd:
	kubectl apply -f https://raw.githubusercontent.com/fluxcd/helm-operator/master/deploy/crds.yaml

# fluxcd-ns:
# 	kubectl create namespace fluxcd

flux-install: fluxcd-repo
	helm upgrade -i flux fluxcd/flux --wait \
		--namespace $(NAMESPACE) \
		--set git.path="releases\,secrets" \
		--set git.branch=kingdonb \
		--set git.url=git@github.com:kingdonb/gitops-hephy \
		--set rbac.create=true \
		--set clusterRole.create=true \
		--set serviceAccount.create=true \
		--set allowedNamespaces={kingdonb}

sealed-secrets-key:
	kubectl create namespace $(ADM_NAMESPACE)
	kubectl apply -f sealed-secrets-key.yaml

helm-operator-install: # sealed-secrets-key
	helm upgrade -i helm-operator fluxcd/helm-operator --wait \
		--namespace $(NAMESPACE) \
		--set git.ssh.secretName=flux-git-deploy \
		--set git.pollInterval=1m \
		--set chartsSyncInterval=1m \
		--set helm.versions=v3 \
		--set allowNamespace=kingdonb \
		--skip-crds \
		--set rbac.create=true \
		--set clusterRole.create=true \
		--set serviceAccount.create=true

backup-key:
	kubectl get secret -n $(ADM_NAMESPACE) -l sealedsecrets.bitnami.com/sealed-secrets-key=active -o yaml > sealed-secrets-key.yaml

restore-key:
	kubectl replace secret -n $(ADM_NAMESPACE) sealed-secrets-key -f sealed-secrets-key.yaml
	kubectl delete pod -n $(ADM_NAMESPACE) -l app=sealed-secrets

uninstall-sealed-secrets:
	kubectl delete --ignore-not-found=true clusterrole/secrets-unsealer ns/$(ADM_NAMESPACE) clusterrolebinding/sealed-secrets
	kubectl delete --ignore-not-found=true crd sealedsecrets.bitnami.com

uninstall-flux-helm-operator:
	kubectl delete --ignore-not-found=true crd helmreleases.helm.fluxcd.io
#	kubectl delete --ignore-not-found=true ns fluxcd

uninstall: uninstall-sealed-secrets uninstall-flux-helm-operator

identity:
	fluxctl --k8s-fwd-ns $(NAMESPACE) identity
