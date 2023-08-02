#!/bin/bash
{
    tailscale status --json | jq -cM '{ansible_facts: {tailscale: .} }'
} || {
    echo '{ "ansible_facts": {} }'
}
