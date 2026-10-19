---
layout: post
title: "One year of AI"
date: 2026-10-19
section: solutions
description: "From autocomplete to an agent ecosystem: what changed in a year of working with AI"
thumbnail: /assets/ai-one-year.svg
tags:
  - experience
  - skills
  - agents

---

## One year of AI

TLDR;
In one year AI went from a fancy autocomplete to a team of agents I steer. The models improved enormously, but the biggest gains came from the harness around them: instructions (AGENTS.md), skills, hooks and knowledge. The problem moved from getting code generated to deciding what to trust, how to steer it, and how to keep it maintainable. The work shifted from *writing* code to *reviewing, refactoring and guiding* it.

![One year of AI timeline]({{ '/assets/ai-one-year-timeline.svg' | relative_url }})

## The journey

### ≤ 2025 — The assistant
- Inline suggestions / IntelliSense on steroids.
- Generating widgets and small components... and then redoing almost everything.
- Generating documents and text.

Useful, but you could not trust the output. AI saved typing, not thinking.

### 2026 Q1 — The sidekick
- Coding together with AI as a sidekick.
- Generating unit tests — the first task I really handed over.

### 2026 Q3 — The agent
- Blown away by the capabilities: whole features, multi-file changes, working end-to-end.
- And a real **token burner** (see [token economics](../problems/2026-09-08-token-economics.md) and [cost management](2026-09-9-cost-management.md)).

### 2026 Q4 — The ecosystem
- Creating **custom skills**: code quality / coding standards, an agent logging framework for process mining.
- **Refactoring generated code**: rewriting large amounts of code so it is easy to read and follows standards and best practices. Generated code that works is not the same as code you can maintain.
- **Switching between models and vendors** per task, and to validate outcomes against each other. One model is better at creating a nice design, another at writing code (see the [architecture experiment](2026-10-07-architecture-greenfield.md)).
- **Connecting agents with A2A**: using agent-to-agent communication to let specialised agents collaborate instead of forcing one model to do every task.
- **Building a custom orchestrator**: coordinating those agents through Teams, routing work to the right capability and collecting the results in one workflow.

The model is no longer the whole solution. It is one component in a system that needs boundaries, context and feedback.

The orchestration layer also made the gaps visible. Connecting agents exposed missing contracts, unclear ownership, incomplete context and weak hand-offs between tools. Those gaps were difficult to see when every task stayed inside one chat.

## What made the difference

| Building block | What it gives you |
|---|---|
| [AGENTS.md](https://agents.md/) | One open, vendor-neutral place for project instructions, read by many agents |
| [Agent Skills](https://agentskills.io/) | Reusable, packaged know-how (standards, workflows, scripts) loaded only when needed |
| Hooks | Deterministic automation around the agent: logging, checks, guardrails that don't depend on the model remembering |
| Knowledge | Context about your domain, decisions and code, so the model doesn't guess |

These building blocks matter because they turn personal prompt craft into reusable project knowledge. They reduce the gap between “the model generated something” and “the team can safely use the result.”

## Lessons learned
1. **Models improve fast; your harness is what you keep.** Skills, instructions and hooks carry over to the next model and vendor.
2. **Review is the new bottleneck.** Budget time to read, refactor and standardise generated code.
3. **Don't marry one model.** Use the best one per task and cross-check important outcomes.
4. **Watch the tokens.** More capability means more consumption; measure it.
5. **A clear goal is a debugging tool.** When the desired outcome is explicit, it becomes much easier to find what is missing in the model, agent, tool, context or orchestration layer.

## The problem that remains

AI made implementation faster, but moved effort into judgment:

1. **Review is the bottleneck.** Generated code still needs a human to check behavior, readability and fit.
2. **Refactoring is not optional.** Working code can still be hard to follow, inconsistent or over-engineered.
3. **Tokens need discipline.** More context and more iterations can quietly turn speed into cost.
4. **One model is not enough.** Different models have different strengths, and comparison is a useful form of validation.
5. **New protocols need an outcome to prove themselves against.** A2A and multi-agent workflows are only useful when they solve a clearly defined problem; otherwise, the orchestration itself becomes extra complexity.

The lesson after a year is not that AI replaces engineering. It is that engineering now includes designing the environment in which AI can do useful work.

## Links
- [https://agents.md/](https://agents.md/)
- [https://agentskills.io/](https://agentskills.io/)
- [Agent 2 Agent protocol](https://github.com/a2aproject/a2a)
- [Token economics](../problems/2026-09-08-token-economics.md)
- [Cost management](2026-09-9-cost-management.md)
- [Architecture experiment](2026-10-07-architecture-greenfield.md)
