# Thoughts about AI Development

see: https://snefs.github.io/ai-zone

# Upcoming posts - solutions

- Static code analysis
- Guardrails
- Monitoring
- Focus on end-2-end testing
- Focus on describing requirements clearly/smart
- Budgets/cost management

# Upcoming posts - proboems

---
layout: post
title: "Blog Topic Suggestions: When Agents Take Over Development"
date: 2026-09-09
description: "A curated list of 30+ topics worth exploring as AI agents take over the day-to-day of software development."
---

This is a working list of blog post ideas that arise once AI agents take over the development process and developers no longer write code directly. The categories below map to the questions that inevitably surface for teams, product owners, and leadership.

## Testing in an agent-driven world

1. **Who owns the tests now?** If agents write the code, do they also own the test suite, or does a human reviewer become the gatekeeper of quality?

2. **Test coverage as a guardrail** — can enforced coverage thresholds become the only reliable way to keep agent-generated code honest?

3. **The rise of AI-specific test patterns** — how do you test an agent that produces slightly different code on every run?

4. **Regression testing on autopilot** — when agents ship fast, does the meaning of "we didn't break anything" change?

5. **Test-time evaluation as a release gate** — treating tests less like a final check and more like a continuous contract.

## Product ownership without coding

6. **The product owner as the new bottleneck** — when dev is fast, the backlog, not the sprint, becomes the constraint.

7. **Specs as the new source code** — if agents build from prompts, then writing precise requirements *is* the engineering work.

8. **Prompt/maintainability debt** — your prompts are now legacy code. Who refactors them?

9. **Prioritization under infinite capacity** — what happens to roadmap discipline when "let's try it" costs almost nothing?

10. **Acceptance criteria literacy** — the single most valuable skill a product person can now develop.

## Releases and production

11. **Continuous everything** — if agents remove the human bottleneck, does continuous delivery actually mean every commit ships?

12. **Release cadence versus release confidence** — more releases expose the real maturity of your instrumentation, not your speed.

13. **Canary releases as the default** — when you can't trust a single code review, you trust the metrics instead.

14. **Who signs off when the coder is an agent?** The accountability gap between "the agent did it" and "we own the outcome."

15. **Zero-downtime becomes table stakes** — because there is no "pause" button on an agent that keeps refactoring.

## Production and operations

16. **Observability over review** — in an agent-maintained system, telemetry does the jobs code review used to do.

17. **Autonomous incident response** — the same agents that shipped the change probably get paged for the change they caused.

18. **The self-healing production system** — letting agents patch production directly, and the trust needed to allow it.

19. **Drift detection** — agents refactor constantly; how do you notice when behavior quietly changes in production?

20. **The on-call agent** — the shifting definition of ops when both the author and the responder are automated.

## New processes that are needed

21. **The guardrail layer** — what explicit architecture/security/business rules must exist before you let agents loose on a codebase?

22. **Agent SLAs and observability for the pipeline itself** — you now need metrics on how *well* your AI developers perform.

23. **The human-in-the-loop exception policy** — defining exactly which changes still require a person, forever.

24. **Estimation is dead, budgeting is alive** — token economics forces new conversations about cost per feature, not hours per task.

25. **Version control for instructions** — prompts, policies and guardrails need the same discipline code got 20 years ago.

## When this is a bad idea for a company

26. **The unmaintainable promptbase** — scale the worst-documented legacy system by 100x and you get an agent-driven company with no way to change direction.

27. **When nobody can review the output** — if you've lost the internal expertise to actually judge agent work, you've lost the ability to course-correct.

28. **Commodity apps, no moat** — if your advantage was "we can code fast," agents erase it; fast is no longer the differentiator.

29. **Mission-critical, safety-first domains** — when the cost of a subtle, plausible-looking wrong change is catastrophic, automation is a liability until every guardrail is proven.

30. **The talent treadmill** — if your senior reviewers retire and no juniors replaced them, the knowledge needed to keep agents honest disappears.

31. **When "shipping more" isn't the problem** — companies whose real problem is product-market fit get more features, not more customers.

32. **Compliance and audit contexts** — regulated industries where "an agent changed this and we're not sure how" is an unacceptable explanation.

---

*This list is a starting point — pick any topic, expand the thinking, and turn it into a full post. Suggested next step: draft the first article and add it to `_posts/`.*
