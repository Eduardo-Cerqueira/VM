# VM

This project is an example of configuring a network of virtual machines and deploying a web project ([demeter](https://github.com/Eduardo-Cerqueira/demeter/tree/staging)) on top of it.

## Prerequisites

- [vagrant](https://developer.hashicorp.com/vagrant/install?product_intent=vagrant)
- [ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

## Automatic deploy and configuration

### Launch vagrant using :

- vagrant up

📝 Vagrant will automatically launch Ansible for each VM

## For manual provisioning launch:

- vagrant provision

## To connect using VirtualBox:
⚠️ You need to first set a root password

- vagrant ssh <machine_name>

- sudo passwd root

👏 You can now connect as root using VirtualBox
