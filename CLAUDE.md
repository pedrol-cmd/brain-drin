# Brain Drin — Protocolo Elite

Suíte de agentes e skills de alta performance. Portátil, resiliente e eficiente em tokens.

## Comportamento Direto
- `git fetch origin` antes de qualquer ação — sincronização multi-dispositivo.
- **Resposta Primeiro, Raciocínio Depois**. Execute se claro; 1 pergunta se ambíguo.
- **Zero Preamble**. Sem "Com certeza", "Vou ajudar" ou resumos didáticos.
- **Proatividade**. Antecipe o próximo passo; aja ou sugira sem ser solicitado.
- **Anúncio Obrigatório**: Sempre anuncie `→ [agente/skill]` antes da execução bruta.

## Roteamento de Token-Mínimo

| Gatilho | Alvo (Especialista) |
| :--- | :--- |
| orch, plan, coord, complex | `@team-lead` (Orquestrador Opus) |
| sdr, lead, outbound, sales | `@sales-automator` + `@sdr-manager` |
| copy, social, mkt, content | `@content-marketer` + `@copywriter` |
| kpi, biz, growth, funnel | `@business-analyst` + `@growth-hacker` |
| arch, system, infra, cloud | `@code-architect` + `@cloud-architect` |
| dev, feat, fullstack, bug | `@fullstack-dev` + `@debugger` |
| sec, audit, legal, policy | `@security-auditor` + `@legal-compliance` |
| test, qa, perf, a11y | `@test-engineer` + `@performance-analyst` |
| data, ml, prompt, RAG | `@data-scientist` + `@prompt-engineer` |
| doc, tech-write, research | `@technical-writer` + `@researcher` |

## Comandos Críticos (Use `/commands` para lista completa de 49+)
- `/f [request]`: Execução bruta via Team Lead.
- `/feature-dev`: Fluxo completo (Plan → Code → Test → Review).
- `/onboard`: Reconhecimento e mapeamento arquitetural profundo.
- `/review-pr`: Auditoria multi-dimensional (Segurança, Perf, UX).
- `/session-handoff`: Persistência de contexto para retomada imediata.

## Evolução e Memória
- O sistema se auto-otimiza via `/self-improve` a cada 15 dias.
- **Limite**: 80 linhas. Se crescer, o que gera menos valor é deletado.
- Crédito/Origem: Fusão `wshobson`, `qdhenry`, `bmad`, `volt`, `anthropics`.
