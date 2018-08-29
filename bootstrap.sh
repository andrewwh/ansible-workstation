if [ "$(whoami)" != "root" ]; then
    echo "Please run as sudo"
    exit 1
fi

if ! which ansible; then
    apt-get update
    apt-get install software-properties-common
    apt-add-repository ppa:ansible/ansible
    apt-get update
    apt-get install ansible
fi

ansible-playbook -K workstation.yml