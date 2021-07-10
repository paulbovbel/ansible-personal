# README

Boostrap:

```
sudo apt update
sudo apt install -y git python3-pip python3-venv python3-wheel
git clone https://github.com/paulbovbel/ansible-home.git
cd ansible-home

python3 -m venv venv --system-site-packages
./venv/bin/pip install -r requirements.txt
./venv/bin/ansible-galaxy install -r requirements.yaml
```

To deploy on the current machine:

`./venv/bin/ansible-playbook -Ki inventory/bovbel playbooks/developer.yaml`

To deploy homelab:

`./venv/bin/ansible-playbook -i inventory/bovbel playbooks/lab.yaml`
`./venv/bin/ansible-playbook -i inventory/vedell playbooks/lab.yaml`
