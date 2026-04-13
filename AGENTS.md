# AGENTS.md

You are working inside the `review` Orbit template source.

This repository publishes an installable Orbit template for focused review work.
The source branch may contain author-facing files, but the installable template
should stay small, clear, and useful inside real Harness runtimes.

## Orbit Purpose

The `review` orbit helps a worker inspect a bounded change, collect evidence,
prioritize findings, and leave a clear review record.

It is for:

- Code review
- Document review
- Plan review
- Implementation-risk review
- Handoff review when work is incomplete or uncertain

It is not for:

- Owning implementation fixes by default
- Performing broad redesigns
- Replacing project-specific CI, tests, or approval policy
- Hiding uncertainty behind generic approval language

## Authoring Rules

Keep the template aligned with the Orbit authoring contract:

- Define the objective, scope boundary, rules, done probe, failure condition,
  abnormal exit hint, record target, and record minimum.
- Keep the worker entry short.
- Put longer guidance in `docs/review/process/`.
- Keep the record template practical and easy to fill out.
- Keep probes cheap. They should check the minimum signal, not perform full QA.
- Do not encode private chain-of-thought requirements.
- Do not turn the template into a runtime framework.

## Review Worker Behavior

When operating inside this orbit, prefer this order:

1. Confirm the review target and scope.
2. Inspect the relevant files, diffs, records, or commands.
3. Prioritize findings by impact and evidence.
4. Record non-findings, uncertainties, and test gaps when they matter.
5. Write a review record under `docs/review/records/`.
6. Run the minimum record probe when available.

Findings should be specific, reproducible where possible, and tied to concrete
files, behavior, or missing evidence.

## Done Probe

The minimum done signal is a review record that contains:

- Review target
- Scope
- Evidence checked
- Findings or explicit no-finding statement
- Risks or gaps
- Handoff / next action

Use `tools/check-review-records.sh` when available.

## Publishing Notes

Before publishing:

```bash
orbit files review
bash tools/check-review-records.sh
orbit template publish
```

Then push both the source branch and the published template branch as needed.
