apt-get update -y
apt-get upgrade -y

#java -version

#INSTALL JAVA if not present. .!
apt-get install default-jre


#ADD THE KEY
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

#REPO
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

#OR

#cd /etc/apt/sources.list.d
#nano jenkins.list
#deb http://pkg.jenkins.io/debian-stable binary/




apt update -y

apt-get install jenkins -y

#systemctl status jenkins
#(active)

sudo usermod -a -G root jenkins
sudo usermod -a -G root ubuntu

#Make Jenkins listen to all external IPs by editing file /etc/sysconfig/jenkins and changing the JENKINS_LISTEN_ADDRESS="0.0.0.0
