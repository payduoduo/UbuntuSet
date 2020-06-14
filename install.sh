#!/bin/bash
#echo '安装JDK'
#cd ~/Downloads
#tar zxvf jdk-8u191-linux-x64.tar.gz 
#sudo mv jdk1.8.0_191 /usr/local/jdk1.8.0_191/ 
#echo '配置环境变量'
#echo 'export JAVA_HOME=/usr/local/jdk1.8.0_191
#export CLASSPATH=.:$JAVA_HOME/lib
#export PATH=$PATH:$JAVA_HOME/bin' >> ~/.profile

#echo '清华源'
#sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
#sudo rm -rf /etc/apt/sources.list
#sudo cp ./sources.list /etc/apt/
#sudo apt get update
echo '安装npm'
sudo apt install -y nodejs
sudo apt install -y npm
sudo npm install -g cnpm --registry=https://registry.npm.taobao.org
echo '安装git'
sudo apt install -y git
echo '安装zsh和oh_my_zsh'
sudo apt install -y zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
sudo chsh -s /bin/zsh
sudo echo 'source ~/.profile' >> ~/.zshrc

echo '安装vim'
sudo apt install -y vim
echo '安装mysql'
sudo dpkg -i mysql-apt-config_0.8.11-1_all.deb
sudo apt update
sudo apt install -y mysql-server
#echo '安装Tomcat'
#tar zxvf apache-tomcat-9.0.13.tar.gz
#sudo mv apache-tomcat-9.0.13 /usr/local/
#echo  CATALINA_HOME=/usr/local/apache-tomcat-9.0.13 >> /usr/local/apache-tomcat-9.0.13/bin/startup.sh
#touch  /usr/local/apache-tomcat-9.0.13/bin/setenv.sh
#echo JAVA_HOME=/usr/local/jdk1.8.0_191 >> /usr/local/apache-tomcat-9.0.13/bin/setenv.sh
echo '安装gnome'
sudo apt install -y gnome-tweak-tool
sudo apt install -y gnome-shell-extensions
echo '安装dash-to-dock'
sudo apt install -y gnome-shell-extension-dashtodock
echo '安装dash-to-panel'
sudo apt install -y gnome-shell-extension-dash-to-panel
echo '安装chrome'
sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y google-chrome-stable
echo '安装Typora(速度很慢)'
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install -y typora
echo '安装vscode(没处理)'

echo '安装vim'
sudo apt install vim
echo '安装进程监控工具htop'
sudo apt install htop


echo '安装py3 pip'
sudo apt install python3 python3-pip
echo '更换pipy源'
sudo mkdir ~/.pip
sudo cp ./pip.conf ~/.pip/

echo '安装curl'
sudo apt install curl
echo '安装网络工具,ifconfig'
sudo apt install net-tools


echo '生成本机密钥'
ssh-keygen -t rsa -C "payduoduo@163.com"
echo "默认路径为 ~/.ssh/"
# sudo cat ~/.ssh/


echo '安装docker'
sudo apt install docker.io
echo '更换docker源(未测试)'
sudo cat ./daemon.json > /etc/docker/daemon.json