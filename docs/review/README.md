\# Review Orbit



\## Objective



Review code, plans, diffs, or implementation results and produce actionable

findings with evidence, risk level, test notes, and recommended next actions.



\## Scope Boundary



This orbit is responsible for:



\- code review

\- implementation plan review

\- regression risk identification

\- missing test identification

\- security and reliability risk notes

\- review records and handoff notes



This orbit is not responsible for:



\- implementing fixes

\- broad refactoring

\- project management outside the review target

\- global harness orchestration

\- replacing full CI or security scanning systems



\## Rules



\- Lead with findings ordered by severity.

\- Cite files, commands, diffs, logs, or docs when possible.

\- Distinguish confirmed issues from questions or assumptions.

\- Focus on bugs, behavioral regressions, security risks, maintainability risks, and missing tests.

\- Avoid rewriting the implementation unless explicitly redirected.

\- If no issues are found, say so clearly and note residual risk or test gaps.

\- Record the review result under `docs/review/records/`.



\## Severity



\- Critical: likely data loss, security issue, broken core behavior, or release blocker.

\- Important: likely bug, regression, missing required test, or risky behavior.

\- Minor: clarity, maintainability, documentation, or small follow-up.

\- Question: uncertainty that blocks a confident conclusion.



\## Done Probe



The orbit is done when a review record exists under `docs/review/records/` and

contains at least:



\- review target

\- evidence inspected

\- findings or explicit no-findings statement

\- severity for each finding

\- test notes

\- residual risk

\- recommended next action



\## Failure Condition



Mark the work as failed when the review target is unavailable, cannot be scoped,

or lacks enough evidence for a meaningful review.



\## Abnormal Exit Hint



Stop and escalate when:



\- the requested work is implementation rather than review

\- required files, diffs, or logs are unavailable

\- evidence remains contradictory

\- the review scope is too broad for one pass

\- budget, time, or retry limits are exceeded



\## Record Target



Write results to:



`docs/review/records/<topic>.md`



\## Record Minimum



Every record must include:



\- review target

\- inspected evidence

\- findings

\- severity

\- test notes

\- residual risk

\- open questions

\- recommended next action



