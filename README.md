# README

Boostrap:

```
sudo apt update
sudo apt install -y git python3-pip python3-venv
git clone https://github.com/paulbovbel/ansible-home.git
cd ansible-home

python3 -m venv venv
./venv/bin/pip install -r requirements.txt
./venv/bin/ansible-galaxy install -r requirements.yaml

```

To deploy on the current machine:

`./venv/bin/ansible-playbook -Kvvi inventory/personal playbooks/developer.yaml`

To deploy homelab:

`./venv/bin/ansible-playbook -vvi inventory/franklin playbooks/lab.yaml`
`./venv/bin/ansible-playbook -vvi inventory/richmond playbooks/lab.yaml`
`./venv/bin/ansible-playbook -vvi inventory/hartleigh playbooks/lab.yaml`

TODO:
  - make a fancy login template for caddy (https://github.com/tarent/loginsrv/blob/master/README.md#templating)
