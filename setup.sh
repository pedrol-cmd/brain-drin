#!/bin/bash

# Brain Drin — Tactical Installer
# Purpose: Deploys the Brain Drin suite to any local project.

echo "🧠 Initializing Brain Drin Deployment..."

# Check if .claude exists
if [ -d ".claude" ]; then
    echo "⚠️  Existing .claude directory found. Backing up..."
    mv .claude .claude_backup_$(date +%Y%m%d_%H%M%S)
fi

# Create directory structure
mkdir -p .claude/agents .claude/commands .claude/skills

# Copying core suite (assuming we are in the Brain Drin root)
echo "⚡ Fusing Agents, Commands, and Skills..."
cp -r .claude/agents/* .claude/agents/
cp -r .claude/commands/* .claude/commands/
cp -r .claude/skills/* .claude/skills/

# Copying Protocol and configuration
cp CLAUDE.md .
cp CORE-PROTOCOL.md .

echo "✅ Brain Drin Deployed Successfully."
echo "👉 Run '/onboard' to start the architectural mapping."
