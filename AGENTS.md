# AGENTS.md

This repository manages home-lab hosts with Ansible.

## Layout and setup
- `ansible.cfg` selects `hosts.ini`; playbooks live at the repository root and service configuration is under `services/`.
- Shared and per-host variables live in `group_vars/` and `host_vars/`; Galaxy roles are declared in `requirements.yaml`.
- Use `nix develop .` for the Ansible environment. Its shell hook installs roles from `requirements.yaml`.

## Safety
- Treat inventory and variable files as secret-bearing. Keep vault data encrypted; never print secret values or commit plaintext secrets.
- Ansible uses `.vaultpass`, which is gitignored. Keep it local; do not expose vault contents.
- Playbooks can change real hosts. Do not apply a playbook (including through `run_playbook.sh`) unless the user explicitly requests the deployment.

## Validation
- For changed playbooks, run `ansible-playbook --syntax-check path/to/playbook.yml` inside `nix develop .`; this checks syntax without applying changes.
- If roles or vault access are unavailable, report the blocker rather than running a playbook to test it. For other edits, inspect the diff and run `git diff --check`.
