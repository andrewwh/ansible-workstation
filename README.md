# My Development workstation
This is my Ubuntu developer workstation built using Ansible. Complicated, but worth the effort!

> Always a work in progress

## What is installed
- build tools
- git built from source
- docker
- virtualbox
- vagrant
- visual studio code
- chrome
- postgres
- mysql

## How to execute
Either clone this directory and run the __bootstrap.sh__ command or run the following command:

```
curl -s https://raw.githubusercontent.com/andrewwh/ansible-workstation/master/quickstart.sh | bash -s [download]
```

This will download the repository as a zip, unpack and execute. Add the "download" argument to download only and not execute