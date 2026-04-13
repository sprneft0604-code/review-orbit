# Review Orbit

This orbit keeps one review pass focused, evidence-based, and recoverable. It is
for reviewing code changes, plans, diffs, test evidence, and implementation
results.

It is not an implementation orbit, release gate, full CI replacement, or broad
project-management process.

## Core Rule

Lead with findings ordered by severity. A finding should include evidence,
impact, and a recommended next action.

## Severity

- Critical: data loss, security issue, broken core behavior, or release blocker
- Important: likely bug, regression, missing required test, or risky behavior
- Minor: clarity, maintainability, documentation, or small follow-up
- Question: uncertainty that blocks a confident conclusion

## Evidence

Prefer direct evidence:

- file paths and diffs
- commands and test output
- logs
- project docs
- user-provided requirements

If evidence is missing, say what is missing and how that affects confidence.

## Review Record

Write one record per review in `docs/review/records/`, based on
`docs/review/templates/review-record.md`.

The minimum record is:

- status
- review target
- scope
- evidence inspected
- findings or explicit no-findings statement
- severity for each finding
- test notes
- residual risk
- open questions
- recommended next action

The cheap probe `tools/check-review.sh` only checks review record shape. It is
not a replacement for tests, CI, security scanning, or human judgment.

## Failure And Exit

Record `failure` when the target is unavailable or cannot be scoped.

Record `abnormal_exit` when evidence remains contradictory, the review scope is
too broad, or continuing would consume budget without improving confidence.

Record `external_stop` when the human partner stops or redirects the review.
