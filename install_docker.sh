# Install Docker
# see: https://docs.docker.com/engine/installation/linux/ubuntulinux/
apt-get update
apt-get install -y apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo deb https://apt.dockerproject.org/repo ubuntu-vivid main > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install -y docker-engine
usermod -aG docker vagrant
systemctl start docker
systemctl enable docker

# Install Docker Compose
curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
