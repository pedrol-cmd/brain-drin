#!/bin/bash

# Brain Drin — Installer
# Deploys agents, commands, and skills to any Claude Code project.
# Usage: Run from your target project root:
#   bash /path/to/brain-drin/setup.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$(pwd)"

if [ "$SCRIPT_DIR" = "$TARGET_DIR" ]; then
    echo "Error: Run this from your target project directory, not from brain-drin itself."
    echo "Usage: cd /your/project && bash $0"
    exit 1
fi

echo "Brain Drin — deploying to $TARGET_DIR"

# Backup existing .claude if present
if [ -d "$TARGET_DIR/.claude" ]; then
    BACKUP="$TARGET_DIR/.claude_backup_$(date +%Y%m%d_%H%M%S)"
    echo "Backing up existing .claude/ to $BACKUP"
    mv "$TARGET_DIR/.claude" "$BACKUP"
fi

# Deploy
mkdir -p "$TARGET_DIR/.claude"
cp -r "$SCRIPT_DIR/.claude/agents" "$TARGET_DIR/.claude/"
cp -r "$SCRIPT_DIR/.claude/commands" "$TARGET_DIR/.claude/"
cp -r "$SCRIPT_DIR/.claude/skills" "$TARGET_DIR/.claude/"

# Copy protocol files
cp "$SCRIPT_DIR/CLAUDE.md" "$TARGET_DIR/"
cp "$SCRIPT_DIR/CORE-PROTOCOL.md" "$TARGET_DIR/"

# Memory compiler (optional)
if [ -d "$SCRIPT_DIR/.drin/memory-compiler" ]; then
    mkdir -p "$TARGET_DIR/.drin"
    cp -r "$SCRIPT_DIR/.drin/memory-compiler" "$TARGET_DIR/.drin/"
    echo "Memory compiler installed. Run 'uv sync' in .drin/memory-compiler/ to activate."
fi

echo "Done. 51 agents, 52 commands, 100 skills deployed."
echo "Run '/onboard' in Claude Code to start."
