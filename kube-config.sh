

#awscli

sudo apt update -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

#Docker

sudo apt update -y
sudo apt  install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo chmod 666 /var/run/docker.sock

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