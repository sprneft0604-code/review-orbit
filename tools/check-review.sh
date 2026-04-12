#!/usr/bin/env bash
set -euo pipefail

test -f ".harness/orbits/review.yaml"
test -f "docs/review/README.md"
test -f "docs/review/process/triage.md"
test -f "docs/review/process/evidence.md"
test -f "docs/review/process/findings.md"
test -f "docs/review/process/handoff.md"
test -f "docs/review/templates/review-record.md"
test -f "docs/review/records/README.md"

echo "review orbit skeleton: ready"
