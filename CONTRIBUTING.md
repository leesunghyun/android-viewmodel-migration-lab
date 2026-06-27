# Contributing

Thank you for your interest in contributing.

This project is a beginner-friendly migration lab for legacy Android shared-state architecture.

## Branch and PR rules

- Branch naming: `type/short-description` (examples: `docs/update-release-guides`, `fix/ci-template`)
- PRs should have one clear migration goal.
- Keep PRs small and reviewable.
- Do not combine unrelated changes.
- Include tests and docs together when behavior changes.

## Before opening a PR

1. Confirm the scope in [`docs/roadmap-v0.2.0.md`](docs/roadmap-v0.2.0.md) or [release notes](docs/release-guide-v0.2.0-oss-alpha.1.md).
2. Make one focused change set.
3. Run tests/commands relevant to your change (at least those in PR template).
4. If needed, update migration docs in the same PR.
5. Fill out the PR template checklist.

## Required validation in PR body

- Mention commands run and exact result (`PASS` / `FAIL` + reason).
- Mention changed paths for architecture/doc/test files.
- Mention CI impact and manual checks if applicable.

## Merge readiness for codex-lab changes

- PR scope must match a single migration objective.
- New behavior must have test coverage.
- Reviewer notes must be addressed before merge.
- For migration-related behavior changes, both docs and release notes must be aligned.

## Commit style

Use concise commit messages with a clear prefix:
- `feat:` / `fix:` / `docs:` / `chore:`

Small, focused commits are encouraged.

## Local workflow checks

Use these commands when relevant:

- `./gradlew test`
- `./gradlew assembleDebug`
