# Security Policy

## Scope

Brain Drin is a collection of markdown prompt files and a Python-based memory compiler. It does not run user-facing services or handle sensitive data directly.

## What to report

- Agent/skill prompts that could enable prompt injection
- Memory compiler leaking data to unintended locations
- `setup.sh` performing destructive operations without safeguards
- Secrets accidentally committed to the repository

## How to report

Open a private security advisory at [github.com/pedrol-cmd/brain-drin/security/advisories](https://github.com/pedrol-cmd/brain-drin/security/advisories) or email the maintainer directly.

## Dependencies

The memory compiler uses:
- `claude-agent-sdk` — Anthropic's official SDK
- `python-dotenv` — env var loading
- `tzdata` — timezone data

All managed via `uv` with a locked `uv.lock` for reproducibility.

## Design decisions

- No API keys are stored in the repository
- `.gitignore` excludes `.env`, `__pycache__`, logs, and session data
- The memory compiler uses Claude Code's built-in credentials (`~/.claude/.credentials.json`), not user-managed keys
- Daily logs and knowledge articles are gitignored to prevent personal data leakage
