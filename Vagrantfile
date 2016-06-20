VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu-1404-docker"
  config.vm.box_url = "https://github.com/jose-lpa/packer-ubuntu_14.04/releases/download/v2.0/ubuntu-14.04.box"
  config.vm.hostname = "vagrant"
  config.vm.network :forwarded_port, guest: 8000, host: 8000

  # config.vm.synced_folder "/host/app", "/guest/app"

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 1
    vb.memory = 1024
  end

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y python3
    apt-get install -y python3-pip
    apt-get install -y postgresql-9.3
    ln -nfs /usr/bin/python3.4 /usr/bin/python
    pip3 install --upgrade pip
    pip3 install django==1.9.7
  SHELL
end
