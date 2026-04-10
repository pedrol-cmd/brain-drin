# Contributing

## Adding an Agent

Create a file in `.claude/agents/your-agent.md`:

```markdown
---
name: your-agent
description: One-line description of what this agent does.
model: sonnet
---

You are a [role]. Your core responsibility is [what you do].

## Core Responsibilities
- ...

## Operational Protocol
- ...
```

Required frontmatter fields: `name`, `description`. Optional: `model` (defaults to sonnet).

## Adding a Command

Create a file in `.claude/commands/your-command.md`:

```markdown
---
description: "One-line description shown in /commands list"
argument-hint: "[optional-args]"
---

# Command Name

## Your Task
[What Claude should do when this command is invoked]
```

## Adding a Skill

Create a directory in `.claude/skills/drin-your-skill/`:

```
drin-your-skill/
├── skill.md          # Skill definition with frontmatter
└── steps/
    └── 01-step.md    # Step-by-step workflow
```

Skill names must be prefixed with `drin-`.

## Validation

Before submitting, run the validation script:

```bash
bash validate.sh
```

This checks that all agents have valid frontmatter, all skill directories have the required structure, and counts match.

## Commit Convention

```
feat: description    # new agent, command, or skill
fix: description     # bug fix
docs: description    # documentation only
```
