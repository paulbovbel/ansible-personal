# README

This repository contains the configurations for my development laptop and homelabs. The CI runner will automatically deploy to my homelab on commit - no risk no reward!

Boostrap for development:

```
sudo apt update
sudo apt install -y git python3-pip python3-venv python3-wheel
git clone https://github.com/paulbovbel/ansible-personal.git
cd ansible-personal

python3 -m venv venv
./venv/bin/pip install -r requirements.txt
./venv/bin/ansible-galaxy install -r requirements.yaml
```

To deploy on the current machine:

`./venv/bin/ansible-playbook -Ki inventory/bovbel playbooks/developer.yaml`

To deploy homelab:

`./venv/bin/ansible-playbook -i inventory/bovbel playbooks/lab.yaml`
`./venv/bin/ansible-playbook -i inventory/vedell playbooks/lab.yaml`
