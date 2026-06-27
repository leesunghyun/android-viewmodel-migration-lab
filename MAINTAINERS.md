# MAINTAINERS

This project is maintained as an OSS migration lab and is intentionally small, but it follows a clear ownership model.

## Roles and Responsibilities

### Project Steward
- Owns roadmap direction and release readiness.
- Approves merges for release-impacting changes (documentation, CI, release workflow, migration pattern updates).
- Owns final Codex for OSS readiness preparation.

### Review Owner
- Owns review quality for PRs that touch architecture, docs, or release files.
- Ensures PR scope is explicit and minimal.
- Confirms `./gradlew test` and `./gradlew assembleDebug` evidence is present before merge.

### Community Owner
- Triage issues, label migration tasks, and identify good first issues.
- Creates and maintains contributor support documents.

## Decision Rights

- PRs that do not match a single migration goal are split or rejected.
- Release docs must be updated together with release-sensitive behavior changes.
- PR scope changes without explicit test/build evidence are blocked.
- Legacy archive (`legacy-app/`) must not be modified except through explicit migration tasks.

## Escalation Process

1. If maintainers disagree, the Project Steward resolves within 3 business days.
2. If consensus is not reached, the issue is documented in the PR and deferred.
3. Urgent release-blocking issues (CI broken on `main`) are prioritized in the next review window.

## Contact

Use GitHub Issues with clear labels:
- `migration-task` for migration plan items
- `good first issue` for contributor onboarding tasks
- `docs` for documentation-only work
- `test` for testing and CI reliability work
