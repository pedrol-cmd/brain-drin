# Brain Drin

Portable agent suite. Direct action, minimal tokens.

## Behavior

- `git fetch origin` before any work
- Execute if clear. One question if ambiguous. Zero preamble.
- Announce `-> [agent/skill]` before execution.

## Routing

| Trigger keywords | Target |
| :--- | :--- |
| plan, orchestrate, complex, coordinate | `@team-lead` |
| sdr, lead, outbound, sales, pipeline | `@sales-automator` `@sdr-manager` |
| copy, social, content, marketing | `@content-marketer` `@copywriter` |
| kpi, metrics, growth, funnel, analytics | `@business-analyst` `@growth-hacker` |
| architecture, system, infra, cloud | `@code-architect` `@cloud-architect` |
| dev, feature, fullstack, bug, fix | `@fullstack-dev` `@debugger` |
| security, audit, legal, compliance | `@security-auditor` `@legal-compliance` |
| test, qa, performance, a11y | `@test-engineer` `@performance-analyst` |
| data, ml, prompt, RAG, pipeline | `@data-scientist` `@prompt-engineer` |
| docs, writing, research | `@technical-writer` `@researcher` |

## Key commands

- `/f [request]` — orchestrated execution via team-lead
- `/onboard` — codebase reconnaissance and mapping
- `/feature-dev` — full cycle: plan, code, test, review
- `/review-pr` — multi-dimensional PR audit
- `/session-handoff` — persist context for next session

Run `/commands` for the full list (52 available).

## Memory

Session persistence via `.drin/memory-compiler/`. Auto-hooks on session start/end.

## Sources

Fused from: wshobson, qdhenry, BMAD-METHOD, VoltAgent, Anthropic docs.
