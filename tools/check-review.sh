#!/usr/bin/env bash
set -euo pipefail

test -f ".harness/orbits/review.yaml"
test -f "docs/review/README.md"
test -f "docs/review/templates/review-record.md"
test -f "docs/review/records/README.md"
test -f "docs/review/process/triage.md"
test -f "docs/review/process/evidence.md"
test -f "docs/review/process/findings.md"
test -f "docs/review/process/handoff.md"

record="${1:-}"
if [ -n "$record" ]; then
  test -f "$record"
  grep -q "^## Status" "$record"
  grep -q "^## Review Target" "$record"
  grep -q "^## Evidence Inspected" "$record"
  grep -q "^## Findings" "$record"
  grep -q "^## Recommended Next Action" "$record"
fi

echo "review orbit: ready"
