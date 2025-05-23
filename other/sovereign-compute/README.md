# Sovereign Compute

## Introduction

This is a set of Ansible scripts to:

- Automate installation of Docker on Ubuntu. The scripts are based on the original guide [here](https://docs.docker.com/engine/install/ubuntu/).
- Automate restrictive `ufw` firewall configuration. Based on instructions [here](https://www.digitalocean.com/community/tutorials/how-to-setup-a-firewall-with-ufw-on-an-ubuntu-and-debian-cloud-server).
- Automate installation of NVIDIA GPU support. Based on instructions for installing the [drivers](https://docs.nvidia.com/datacenter/tesla/driver-installation-guide/index.html#ubuntu-installation) and [container  toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#installing-with-apt).
- Automate removal of insecure CUPS

## Prerequisites

```shell
sudo apt-get -yq update
sudo apt-get -yq install ansible-core
install -m 0700 -d $HOME/.ansible/tmp
```

## Installation

```shell
ansible-playbook -i "localhost," --connection=local --ask-become-pass playbook.yml
```
