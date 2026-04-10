---
name: drin-core-protocol
description: The tactical "Brain" of Brain Drin. Master guide for hyper-efficient AI orchestration.
---

# 🧠 CORE-PROTOCOL: Hiper-Eficiência Brain Drin

Este é o protocolo mestre para obter os melhores resultados possíveis (SOTA) com o menor consumo de tokens e contexto.

## 1. Regra de Ouro: Invocação Cirúrgica
**Não use o Claude "genérico".** Sempre anuncie ou direcione para um especialista.

- **Diferença de Eficiência**:
  - *Ruim*: "Analise este código para mim." (Gasta contexto tentando entender sua intenção).
  - *Elite*: `@code-reviewer /review-pr` (Aciona protocolos específicos e ignora ruído).

## 2. A Hierarquia de "Luz" (Economia de Tokens)
Para gastar o mínimo, siga esta ordem de comando:

1. **Comando Específico (`/`)**: Use quando a tarefa é mapeada (ex: `/db-opt`). É o mais eficiente pois já carrega a skill exata.
2. **Agente Especialista (`@`)**: Use para tarefas criativas ou de nicho (ex: `@copywriter`).
3. **Orquestrador Master (`/f` ou `@team-lead`)**: Use **apenas** para problemas complexos que exigem múltiplos passos ou sub-agentes. *Gasta mais tokens, mas evita erros de contexto em tarefas grandes.*

## 3. Protocolo de Input "Zero-Waste"
Para inputs de alta densidade:
- **Contexto Blindado**: Forneça o erro ou a tarefa e o arquivo alvo. Nada mais.
- **Constraints over Instructions**: Em vez de dizer "Seja cuidadoso", diga "Constraint: No external libraries". Constraints são interpretadas com mais peso e menos tokens.
- **Exemplo de Solicitação Elite**:
  > `@backend-dev Crie endpoint /health seguindo drin-api-endpoint-scaffold. Target: server.ts. Constraint: Typescript strict.`

## 4. Gerenciamento de Memória Contextual
O Brain Drin usa o sistema de "Session Handoff":
- Antes de terminar, use `/session-handoff`. 
- Isso comprime o que foi feito num "Context Pack", que você cola no início da próxima conversa. 
- **Isso evita que o Claude perca o fio da meada em projetos longos.**

## 5. Seleção de Modelo (Opus vs Sonnet)
- **Use Sonnet (Default)**: Para 90% das tarefas (Coding, Writing, DevOps).
- **Use Opus**: Apenas para **Arquitetura Crítica**, **Revisão de Segurança Adversária** ou **Estratégia de Negócios Complexa**.
- *Dica*: Se o Sonnet falhar 2 vezes na mesma lógica, mude para `@team-lead` (Opus) para o "Deep Thinking".

---
*Brain Drin: Inteligência de SOTA, Economia de Operação.*
