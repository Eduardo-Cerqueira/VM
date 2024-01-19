# SSH is should already be setup in the virtual machine

## Generate secure host key

`ssh-keygen`

## Pass the ssh key into the guest for an ssh connection

`ssh-copy-id <machine_user>@<machine_ip>`

- It will prompt for your virtual machine user password

## Connect

`ssh <machine_user>@<machine_ip>`