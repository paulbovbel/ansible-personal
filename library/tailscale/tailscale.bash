#!/bin/bash
if command -v tailscale &> /dev/null; then
    tailscale status --json | jq -cM '{ansible_facts: {tailscale: .} }'
else
    echo '{ "ansible_facts": {} }'
fi
