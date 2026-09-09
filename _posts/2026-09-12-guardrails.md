---
layout: post
title: "Guardrails"
date: 2026-09-12
section: solutions
description: "What needs to exist before you let agents loose on a codebase."
---

## The guardrail layer

If agents write the code, the useful work is no longer typing. It is deciding what they are allowed to do.

Before you let an intern-with-infinite-energy touch production, you need a layer that does not depend on a human catching every mistake in the moment:

- architecture rules: where code may live, what may talk to what
- security defaults: secrets, auth, data handling
- business invariants: what must never change without a person
- coding standards that are machine-checkable, not a wiki page

The point is not to slow the agent down. The point is to make the cheap path the safe path.

A prompt that says "please follow best practices" is not a guardrail. A CI job that rejects the change is.

Version those rules like code. When the agent starts routing around them, that is a product bug in your process, not a clever workaround.
