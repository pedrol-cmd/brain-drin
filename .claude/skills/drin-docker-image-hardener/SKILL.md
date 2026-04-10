---
name: drin-docker-image-hardener
description: Workflow for reducing image size and improving security of Docker containers.
status: production
---

# Docker Image Hardener

## Purpose
To reduce the attack surface and deployment time by creating minimal, secure images.

## Checkpoints
1. **Base Image**: Use `alpine` or `distroless` where possible.
2. **Multi-Stage**: Build in one stage, copy only artifacts to the final stage.
3. **Permissions**: Run as a non-root user.
4. **Hardening**: Remove unnecessary shells, packages, and ssh keys.
5. **Layers**: Minimize layer count by grouping RUN commands.

## Rules
- Never use `sudo` inside a container.
- Explicitly define the `USER` in the Dockerfile.
- No secrets in the image layers.
