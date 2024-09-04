chmod +x basement.sh /Kubenetes/kube-config.sh /CI-CD/Artifactory.sh /CI-CD/Testing_Environment.sh /CI-CD/Bypass_script/bypass_jenkins_initial_pass.sh /CI-CD/Bypass_script/bypass_nexus_initial_pass_docker.sh /CI-CD/bypassed_Artifactory.sh
sudo bash ./basement.sh
sleep 5
sudo bash ./CI-CD/Bypass_script/bypass_jenkins_initial_pass.sh
sleep 5
#cd ..
#rm -rf infra-setup
