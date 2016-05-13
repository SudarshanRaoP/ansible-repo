# ansible-repo
Ansible playbook repository



###Ad-hoc Ansible

Run command on remote machine
```shell
Syntax:
  ansible <hostgroups> -m <module> -a "<module args>"
Command:
  ansible all -m raw -a "echo works"
  ansible all -m raw -a "yum update -y"
```

Installing R on machines
```shell

Command:  
  ansible all -m yum -a "name=epel-release state=latest"
  ansible all -m yum -a "name=R state=present"
  
```

Copying `/etc/hosts` to all the machines
```shell
  
  ansible all -m copy -a "src=/etc/hosts dest=/etc/hosts"
  
```
