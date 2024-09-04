sudo apt update -y
sudo apt install curl -y 
sudo apt install unzip -y


#kubectl 

sudo apt update -y
sudo apt install curl -y 
sudo curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client

#helm

sudo snap install helm --classic

#eksctl

sudo apt update -y
curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz"
tar -xzf eksctl_$(uname -s)_amd64.tar.gz -C /tmp && rm eksctl_$(uname -s)_amd64.tar.gz
sudo mv /tmp/eksctl /usr/local/bin
eksctl version
