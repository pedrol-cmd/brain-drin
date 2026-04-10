---
description: Auto-otimização com filtro de qualidade — só o que prova valor entra, tudo que não performa sai
---

# /self-improve

## Princípio

Sistema que aprende tudo fica gordo. A regra é: **só entra o que prova valor. Tudo que não prova, sai.**

Resultado esperado: CLAUDE.md e agentes menores e mais precisos a cada ciclo, não maiores.

---

## Coleta de evidências

Ler `.drin/memory-compiler/daily/` (últimas 2 semanas) e `.drin/memory-compiler/knowledge/`.

Separar em dois grupos:

**SINAL** (vale aprender):
- Padrão apareceu 3+ vezes nas sessões
- Pedro disse "exatamente isso", "perfeito", "assim sempre" — validação explícita
- Abordagem resolveu problema que antes travava
- Pedro repetiu o mesmo pedido de formas diferentes — indica lacuna no sistema

**RUÍDO** (ignorar):
- Aconteceu 1 vez, contexto específico
- Pedro corrigiu depois — aprender o erro seria pior
- Pedro pediu para cortar, simplificar, parar de fazer algo
- Específico do projeto atual, não universal

---

## Análise do sistema atual

Para cada item no CLAUDE.md, agentes e comandos, verificar:

| Pergunta | Se não → |
|---|---|
| Isso foi usado nas últimas 2 semanas? | Candidato a remoção |
| Isso está gerando o comportamento certo? | Candidato a reformulação |
| Isso está duplicado em outro lugar? | Consolidar ou remover |
| Isso está fazendo o sistema maior sem torná-lo melhor? | Remover |

---

## Propostas — formato obrigatório

Cada proposta deve ter:

```
TIPO: ADICIONAR / REMOVER / REFORMULAR
ONDE: [arquivo exato, linha se aplicável]
O QUE: [mudança específica]
EVIDÊNCIA: [observado X vezes em [datas] / validado explicitamente em [data]]
IMPACTO ESPERADO: [por que isso torna o sistema melhor]
```

Nenhuma proposta sem evidência. "Acho que seria melhor" não é evidência.

---

## Regras de qualidade

1. **Redução > Adição.** Se o ciclo não removeu nada, o sistema provavelmente só inchou.
2. **CLAUDE.md máximo 80 linhas.** Se ultrapassar, algo menos valioso precisa sair.
3. **Agente novo só entra se substituir comportamento manual recorrente** — não por "pode ser útil".
4. **Comando novo só entra se Pedro usaria pelo menos 1x/semana**.
5. **Toda adição tem data de revisão** — se em 30 dias não foi usado, remove automaticamente.

---

## Aplicar

Apresentar todas as propostas juntas. Pedro aprova, rejeita ou ajusta cada uma.
Após aprovação: editar arquivos → commit → push → sincronizar `.pedro/` se existir.
