VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box_url  = "https://github.com/kraksoft/vagrant-box-ubuntu/releases/download/15.04/ubuntu-15.04-amd64.box"
  config.vm.box      = "ubuntu-1504"
  config.vm.hostname = "vagrant"
  config.vm.network :forwarded_port, guest: 8000, host: 8000

  # config.vm.synced_folder "/host/app", "/guest/app"

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 1
    vb.memory = 1024
  end

  config.vm.provision "shell", path: "install_django_postgres.sh"
  config.vm.provision "shell", path: "install_docker.sh"
end
