#!/bin/bash

# Brain Drin — Structure Validator
# Checks integrity of agents, commands, skills, and core files.

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

ERRORS=0
WARNINGS=0

pass() { echo "  ✓ $1"; }
fail() { echo "  ✗ $1"; ERRORS=$((ERRORS + 1)); }
warn() { echo "  ! $1"; WARNINGS=$((WARNINGS + 1)); }

echo "Brain Drin — Validating structure..."
echo ""

# --- Core files ---
echo "[Core Files]"
for f in README.md CLAUDE.md CORE-PROTOCOL.md LICENSE setup.sh CHANGELOG.md CONTRIBUTING.md; do
    if [ -f "$f" ]; then pass "$f exists"; else fail "$f missing"; fi
done
echo ""

# --- Agents ---
echo "[Agents]"
AGENT_COUNT=$(ls .claude/agents/*.md 2>/dev/null | wc -l)
if [ "$AGENT_COUNT" -gt 0 ]; then
    pass "$AGENT_COUNT agents found"
else
    fail "No agents found in .claude/agents/"
fi

AGENTS_NO_FRONTMATTER=0
for agent in .claude/agents/*.md; do
    if ! head -1 "$agent" | grep -q "^---"; then
        fail "$(basename "$agent") missing frontmatter"
        AGENTS_NO_FRONTMATTER=$((AGENTS_NO_FRONTMATTER + 1))
    fi
    if ! grep -q "^name:" "$agent"; then
        fail "$(basename "$agent") missing 'name' field"
    fi
    if ! grep -q "^description:" "$agent"; then
        fail "$(basename "$agent") missing 'description' field"
    fi
done
if [ "$AGENTS_NO_FRONTMATTER" -eq 0 ]; then
    pass "All agents have valid frontmatter"
fi
echo ""

# --- Commands ---
echo "[Commands]"
CMD_COUNT=$(ls .claude/commands/*.md 2>/dev/null | wc -l)
if [ "$CMD_COUNT" -gt 0 ]; then
    pass "$CMD_COUNT commands found"
else
    fail "No commands found in .claude/commands/"
fi

CMDS_NO_FRONTMATTER=0
for cmd in .claude/commands/*.md; do
    if ! head -1 "$cmd" | grep -q "^---"; then
        fail "$(basename "$cmd") missing frontmatter"
        CMDS_NO_FRONTMATTER=$((CMDS_NO_FRONTMATTER + 1))
    fi
done
if [ "$CMDS_NO_FRONTMATTER" -eq 0 ]; then
    pass "All commands have frontmatter"
fi
echo ""

# --- Skills ---
echo "[Skills]"
SKILL_COUNT=$(ls -d .claude/skills/*/ 2>/dev/null | wc -l)
if [ "$SKILL_COUNT" -gt 0 ]; then
    pass "$SKILL_COUNT skills found"
else
    fail "No skills found in .claude/skills/"
fi

SKILLS_NO_ENTRY=0
for skill_dir in .claude/skills/*/; do
    skill_name=$(basename "$skill_dir")
    if [ ! -f "$skill_dir/SKILL.md" ] && [ ! -f "$skill_dir/skill.md" ]; then
        fail "$skill_name missing SKILL.md"
        SKILLS_NO_ENTRY=$((SKILLS_NO_ENTRY + 1))
    fi
done
if [ "$SKILLS_NO_ENTRY" -eq 0 ]; then
    pass "All skills have entry file"
fi
echo ""

# --- Memory Compiler ---
echo "[Memory Compiler]"
if [ -d ".drin/memory-compiler" ]; then
    pass "Memory compiler directory exists"
    for f in pyproject.toml scripts/compile.py scripts/flush.py hooks/session-start.py; do
        if [ -f ".drin/memory-compiler/$f" ]; then
            pass "$f exists"
        else
            warn "$f missing"
        fi
    done
else
    warn "Memory compiler not found (optional)"
fi
echo ""

# --- Security ---
echo "[Security]"
if [ -f ".gitignore" ]; then pass ".gitignore exists"; else fail ".gitignore missing"; fi

if git ls-files | grep -qE "\.env$|\.env\." 2>/dev/null; then
    fail ".env file tracked in git"
else
    pass "No .env files tracked"
fi

if git ls-files | grep -q "__pycache__" 2>/dev/null; then
    fail "__pycache__ tracked in git"
else
    pass "No __pycache__ tracked"
fi
echo ""

# --- Summary ---
echo "================================"
echo "  Agents:   $AGENT_COUNT"
echo "  Commands: $CMD_COUNT"
echo "  Skills:   $SKILL_COUNT"
echo "  Errors:   $ERRORS"
echo "  Warnings: $WARNINGS"
echo "================================"

if [ "$ERRORS" -gt 0 ]; then
    echo "FAIL — $ERRORS error(s) found"
    exit 1
else
    echo "PASS — all checks passed"
    exit 0
fi
