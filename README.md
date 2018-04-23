# README

Boostrap:

```
sudo apt update
sudo apt install -y git python-pip
sudo -H pip install pip --upgrade
sudo -H pip install ansible dnspython
git clone https://github.com/paulbovbel/ansible-home.git
cd ansible-home
```

To deploy on the current machine:

`ansible-playbook -Kvvi inventory/personal playbooks/developer.yaml`

To deploy homelab:

`ansible-playbook -Kvvi inventory/homelab playbooks/homelab.yaml`

TODO:
  - dockerize remaining media services (cockpit, SMTP, AWS DDNS, samba)
  - use an internal docker network to avoid exposing ports from internal services (use caddy as only bridge to external network)
  - make a fancy login template for caddy (https://github.com/tarent/loginsrv/blob/master/README.md#templating)
  - use SSO for caddy (https://caddyserver.com/docs/http.login)
  - mount NFS in docker (https://stackoverflow.com/questions/46570355/mounting-nfs-shares-inside-docker-container-using-shell-script)
    - pending https://github.com/moby/moby/issues/32582
