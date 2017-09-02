# README

To deploy on the current machine:

`ansible-playbook -i inventory/personal playbooks/developer.yaml`

To deploy homelab:

`ansible-playbook -vv -i inventory/homelab playbooks/homelab.yaml`

To encrypt all vault files:

`ansible-vault encrypt $(find . -path *vault/*)`


TODO outstanding components:
  - xenserver + VMs setup
  - nas4free VM
  - pfsense VM
