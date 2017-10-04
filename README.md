Mobile Next Jenkins Stuff

There are a number of scripts in this repo which can be used to provision Jenkins and then install plugins.

`./scripts/build.sh` will create a Jenkins.

`./scripts/configure-kube-plugin.sh` will create the ConfigMap which will configure the Jenkins Kubernetes Plugin.

`./scripts/deploy.sh` will add the `android-siging` plugin into the Jenkins instance and restart the instance.
