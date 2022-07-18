# shared-repo


## Instructions - BuildConfig Portion

1) Clone this repository to your bitbucket - it contains some objects which we will work on and configure according to your environment together
2) Create a Jenkins pipeline using the provided Jenkinsfile (in this repository)
3) Get the OpenShift Jenkins Module as given here: https://plugins.jenkins.io/openshift-client/#documentation (The Jenkinsfile makes reference to this)
4) There are other things we need to get done - but this is when the OpenShift cluster has been created


## Instructions - Ansible/Vault Integration

1) Vault Server set up 
2) Connection from Jenkins worker node to vault server established
3) Hashicorp Vault Ansible module installed in Jenkins worker: https://docs.ansible.com/ansible/2.9/plugins/lookup/hashi_vault.html
4) K8's Auth Ansible module insalled in Jenkins worker: https://docs.ansible.com/ansible/2.9/modules/k8s_auth_module.html
5) K8 Ansible Module installed in Jenkins worker: https://docs.ansible.com/ansible/latest/collections/kubernetes/core/k8s_module.html
6) Connectiviry from Jenkins master node to worker node established (able to trigger the worker node to trigger commands remotely - namely running Ansible scripts)
