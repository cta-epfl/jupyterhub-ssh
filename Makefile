
install:
	helm upgrade --install jupyterhub-ssh \
	    helm-chart/jupyterhub-ssh \
	    --set hubUrl=https://platform.dev.ctaodc.ch/ \
	    --set ssh.enabled=true \
	    --set sftp.enabled=false

#--version <helm chart version> \


label:
	kubectl label node 148.187.149.225 master=true
