sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens

<!-- to change new namespace as default -->
kubens ecom 

<!-- make a shortcut for kubectl apply command -->
alias ka="kubectl apply -f manifest.yaml"

source: https://github.com/ahmetb/kubectx