#### Vangrant, Oscar and Puppet Enterprise

***Requirements***

*	[https://github.com/adrienthebo/oscar](https://github.com/adrienthebo/oscar)
*	[http://www.vagrantup.com/downloads.html](http://www.vagrantup.com/downloads.html)
*	[https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
*	Grab the **Oracle VM VirtualBox Extension Pack** too.

##### Vagrant Plugins

		sudo vagrant plugin install oscar
		sudo vagrant plugin install vagrant-pe_build
		sudo vagrant plugin install vagrant-config_builder
		sudo vagrant plugin install vagrant-hosts
		sudo vagrant plugin install vagrant-hostmanager
		sudo vagrant plugin install vagrant-auto_network
		sudo vagrant plugin install r10k
		sudo vagrant plugin install vagrant-multiprovider-snap
		sudo vagrant plugin install vagrant-windows
		
##### Vagrant commands

		sudo vagrant status
		sudo vagrant up <boxname>
		sudo vagrant halt <boxname>
		sudo vagrant resume <boxname>
		sudo vagrant reload <boxname>
		sudo vagrant destroy -f <boxname>
		
##### Example

		sudo vagrant up master ubuntu12-01 centos6-01
		
- This will bring up a Puppet Enterprise Master and two agents connected and ready to go.
- Currently the Windows images don't work with automatic Puppet configuration.

#### VMware Fusion and kernel updates.

- If you see a message like bellow after halting the box, try to halt and up the box again.

    An error occurred while executing `vmrun`, a utility for controlling
VMware machines. The command and output are below:

Command: ["addSharedFolder", "/pe-vagrant-all/.vagrant/machines/master/vmware_fusion/722ef238-ad01-428c-adf7-f979c9aee6bf/packer-centos-6.6-x86_64.vmx", "-vagrant", "/Users/jconover/src/vagrant/pe-vagrant-all", {:notify=>[:stdout, :stderr]}]

Stdout: Error: The VMware Tools are not running in the virtual machine: /Users/jconover/src/vagrant/pe-vagrant-all/.vagrant/machines/master/vmware_fusion/722ef238-ad01-428c-adf7-f979c9aee6bf/packer-centos-6.6-x86_64.vmx

Stderr:

- Halt and Up commands:

    sudo vagrant halt master
    sudo vagrant up master
