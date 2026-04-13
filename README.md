# orbit-review-template

[中文 README](README.zh-CN.md)

An Orbit template for focused, evidence-based review work.

Use this template when you want an agent to review code, documents, plans, or
implementation changes with clear scope, explicit evidence, and a written record
of findings. The orbit is intentionally small: it gives the worker enough
structure to inspect, prioritize, and hand off review results without turning the
session into a full redesign or implementation pass.

## Quick Start

Create or enter a Harness runtime, then install the template from GitHub:

```bash
harness init
harness install https://github.com/sprneft0604-code/review-orbit.git
orbit enter review
```

Check the installed orbit files:

```bash
orbit files review
orbit status
```

Run the minimum record probe after writing a review record:

```bash
bash tools/check-review-records.sh
```

## What You Get

- A `review` orbit with a bounded projection and write surface.
- Review process notes for scope, evidence, findings, and handoff.
- A reusable review record template.
- A lightweight probe that checks whether review records exist and contain the
  minimum expected sections.

## Research Behind This Template

This template was shaped by comparing several strong review, verification,
test-first, and spec-first agent workflows. GitHub stars were checked on
2026-04-12.

| Repository | Stars | What it contributed |
| --- | ---: | --- |
| [superpowers](https://github.com/obra/superpowers) | 147,851 | A strict TDD core: valid RED before production code, minimal GREEN, then refactor. This template keeps that core while using a calmer handoff style for blocked cases. |
| [everything-claude-code](https://github.com/affaan-m/everything-claude-code) | 152,062 | A complete TDD agent/workflow shape with evidence and test-layer awareness. This template borrows the evidence mindset without forcing a universal coverage number. |
| [spec-kit](https://github.com/github/spec-kit) | 87,242 | A useful model for test-first work driven by project policy and spec clarity. This template keeps room for project-specific testing discipline. |
| [get-shit-done](https://github.com/gsd-build/get-shit-done) | 51,071 | Strong verification and handoff habits. This template adopts explicit blocked/gap recording so failed or uncertain TDD cycles remain useful. |
| [gstack](https://github.com/garrytan/gstack) | 70,314 | Regression-test and coverage-audit instincts. This template reflects that by making bug fixes prove the regression path. |
| [BMAD-METHOD](https://github.com/bmad-code-org/BMAD-METHOD) | 44,347 | Broader QA, ATDD, and traceability framing. This template treats those as escalation paths rather than requirements for every small task. |
| [OpenSpec](https://github.com/Fission-AI/OpenSpec) | 39,231 | Spec-first discipline for unclear behavior. This template tells agents to stop and clarify when a valid test target cannot be established. |
| [oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode) | 27,919 | A compact TDD entry-mode idea. This template keeps the installed worker entry short so the agent can get to the test-first loop quickly. |

The result is intentionally focused: strict where review needs to be strict, but
lightweight enough to install into real projects without turning every review
into a full QA program.
