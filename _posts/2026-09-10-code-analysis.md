---
layout: post
title: "Code analysis"
date: 2026-09-10
section: solutions
description: "Static analysis as the reviewer when agents write most of the diff."
---

## Static analysis as the reviewer

You will not read every line an agent produces. Pretending otherwise is how half-baked software ships.

Code analysis is the part of review that can run every time, on every diff, without getting tired:

- linters and formatters so style is not a debate
- complexity and duplication checks so the intern does not invent a fourth pattern
- security scanners for the boring, dangerous mistakes
- architecture tests that fail when a layer is skipped

The agent can write the code. The pipeline decides whether it is allowed to stay.

This also answers a quieter problem: if nobody on the team can still judge the output, analysis is the last honest signal you have. Raise the bar in tools, not in a pull-request comment that nobody has time to write.

If CI is green and the change still feels wrong, that is a missing rule — add it. Do not rely on remembering next time.
