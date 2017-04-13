# What is this

This is my Ansible playbook to setup a VPS for development. Idea being that a remote server will have more horsepower than my local notebook.

# How to use

These instructions are for me only. If you actually want to use it, contact me.

## Assumptions

- Ubuntu 16.04
- Logged in user can sudo
- ~/.ssh and ~/.gnupg was manually created using the secret keys in brain.org.gpg

## Commands

```
git clone git@github.com:danieroux/remote-development-vps-setup.git ~/remote-setup
~/remote-setup/djr-ubuntu-remote-dev.sh
```
