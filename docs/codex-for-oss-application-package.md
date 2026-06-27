# Codex for OSS Application Package

## 1) Repository description (submission draft)

Android ViewModel Migration Lab is a small, open-source migration reference project for legacy Android shared-state patterns.
It documents a safe, incremental path from older Android AAC/ViewModel code toward modern Kotlin + Compose + ViewModel + StateFlow architecture.

## 2) Why this project matters

- Legacy shared-state synchronization between screens is a recurring maintenance issue in real Android codebases.
- This repository demonstrates a repeated, small-scope, test-driven migration approach.
- The project is designed around reviewable PRs, not a one-shot rewrite.
- The repo preserves a legacy baseline (`legacy-app`) while modernizing the current sample in `app/`.

## 3) Maintenance model

- One migration PR at a time
- Required evidence in PRs (build/test summary)
- Issue templates for migration tasks and bugs
- Maintainer docs: `MAINTAINERS.md`, `ROADMAP.md`, `CODEOWNERS`
- Release process and verification checklist in release guide docs

## 4) Public evidence links

- README: [`README.md`](../README.md)
- Codex process notes: [`docs/codex-for-oss.md`](../docs/codex-for-oss.md)
- Readiness plan: [`docs/superpowers/plans/2026-06-27-codex-for-oss-readiness-spec.md`](../docs/superpowers/plans/2026-06-27-codex-for-oss-readiness-spec.md)
- Release guide: [`docs/release-guide-v0.2.0-oss-alpha.1.md`](../docs/release-guide-v0.2.0-oss-alpha.1.md)
- Submission metrics script: [`scripts/codex-metrics.sh`](../scripts/codex-metrics.sh)

## 5) External evidence and community activity (to be completed)

- Labels and issue templates are in place for contribution and triage.
- Planned next step: publish small release-update posts in Android community channels and record links in follow-up notes.

## 6) Risk and scale disclosures

- This is a migration lab, not a production app.
- The sample intentionally excludes heavy production integrations (DI, networking, databases).
- Current external usage scale is in early-stage build-up; growth targets are documented in the roadmap and tracked in PRs/issues.
