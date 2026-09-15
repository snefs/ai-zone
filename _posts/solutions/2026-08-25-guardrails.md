---
layout: post
title: "Guardrails"
date: 2026-09-12
section: solutions
description: "What needs to exist before you let agents loose on a codebase."
thumbnail: /assets/ai-guardrails.png
tags:
  - guardrails
  - ci rules
  - architecture
  - safety
  - approvals
  - business invariants
  - end to end tests

---

## The guardrail layer

If agents write the code, the useful work is no longer typing. It is deciding what they are allowed to do.

Before you let an intern-with-infinite-energy touch production, you need a layer that does not depend on a human catching every mistake in the moment:

- architecture rules: where code may live, what may talk to what
- security defaults: secrets, auth, data handling
- business invariants: what must never change without a person
- coding standards that are machine-checkable, not a wiki page
- no automatic deployment without approvals from end-2-end tests - even if the agent says it is really really good

The point is not to slow the agent down. The point is to make the cheap path the safe path.

A prompt that says "please follow best practices" is not a guardrail. A CI job that rejects the change is.

## [AGENTS.MD](https://agents.md/)
On the project level you can create a file called AGENT.MD, that you can use to request tracability (e.g. with instructions such as: "When processing a reqest, Log the activity id, category, title, summary, start, end, duration), write the start time as soon as you start with the request in a file called AGENTLOG.csv" 

If you have a repo with specific architecture styles are documentation you can use this.

(guardrails library)[https://github.com/NVIDIA-NeMo/Guardrails]
