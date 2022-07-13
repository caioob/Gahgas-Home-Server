vagrant up |tee vagrant.log

sed -i "s/ansible_host=[19-].* a/ansible_host=$(cat vagrant.log | grep  address: | sed 's/    default: SSH address: //g'| sed 's/:22//g') a/g" hosts

ansible-playbook ./run.yml
