Role Playbook For Zabbix Setup
Require:
A MySQL Database Server
A Server For Zabbix Server & Zabbix Web

Step One:
Use Command *hostnamectl* To Change The Hostname Of Your Server
The Server To Host Zabbix Server And Zabbix Web Should Be ## zabbix-server ##
The Server To Host Database Should Be ## database ##
The Server To Host Agent Can Use Whatever Name It's Currently Using

Step Two:
Use Command *ssh-keygen* To Generate Digital Signature(A Pair Of Key)
Then Use Command *ssh-copy-id IP* To Send The Pub Key Of This Server To The Servers
Which Will Be Controlled By Ansible Server

Step Three:
Create A hosts File On The Upper Level Of Roles Folder
Its Contents Should Look Like This
xxxx(Custom Name For Host) ansible_ssh_host=IP

Step Four:
Create A Inventory File To Run This Playbook
Its Contents Should Look Like This
---
- hosts: all
  roles:
    - Zabbix

Step Five:
Modify The Variables In main.yaml In vars Directory Before You Run This Playbook

Step Five:
Use Command *ansible-playbook inventory.yaml* To Run This Playbook
