# Codex for OSS Readiness Specification

## Goal
Make the repository clearly projectable as a maintainable Android migration reference project suitable for Codex for OSS review.

## Scope
- Repository governance and contribution quality signals
- Maintenance operating model
- Evidence capture for review readiness
- Application package artifacts
- Optional community activity bootstrap (GitHub-based)

## Acceptance Criteria

### 1) Repository readiness evidence
- [ ] README contains a dedicated "Codex for OSS readiness" section
- [ ] README links to:
  - `docs/superpowers/plans/2026-06-27-codex-for-oss-readiness-spec.md`
  - `docs/codex-for-oss-application-package.md`
  - `docs/codex-for-oss.md`
- [ ] Repository metadata files exist and are complete:
  - `LICENSE` is parseable as Apache-2.0
  - `CONTRIBUTING.md`
  - `SECURITY.md`
  - `CODE_OF_CONDUCT.md`
  - `CHANGELOG.md`

### 2) Maintainer/process signals
- [ ] `MAINTAINERS.md` defines ownership, triage, and release decision rights.
- [ ] `ROADMAP.md` defines explicit 3-stage maintenance cadence.
- [ ] `.github/CODEOWNERS` exists and covers critical paths.
- [ ] `.github/pull_request_template.md` requires build/test evidence.

### 3) Contribution operating model
- [ ] `.github/ISSUE_TEMPLATE/bug_report.md` includes reproducible fields (steps, expected/actual, environment).
- [ ] `.github/ISSUE_TEMPLATE/migration_task.md` includes impact area, done criteria, and acceptance checklist.
- [ ] `.github/ISSUE_TEMPLATE/config.yml` exists and disables blank issues.

### 4) Evidence collection
- [ ] `scripts/codex-metrics.sh` exists and can run with/without `gh`/`jq` dependencies.
- [ ] `docs/codex-for-oss-application-package.md` exists with conservative, non-overselling text.
- [ ] Release/readiness docs explicitly connect to v0.2 verification and CI proof.

### 5) Reviewability
- [ ] `docs/release-guide-v0.2.0-oss-alpha.1.md` includes a final checklist to capture verification evidence.
- [ ] Changelog entry documents all readiness-oriented updates in `Unreleased`.

## Implementation Order
1. Task 1: Create readiness spec + README pointer.
2. Task 2: License and changelog metadata standardization.
3. Task 3: Maintainer and roadmap documents.
4. Task 4: Governance docs strengthening.
5. Task 5: Issue and PR template hardening.
6. Task 6: Evidence docs and release guide alignment.
7. Task 7: Metrics script.
8. Task 8: Submission package.
9. Task 9: Community activity bootstrap signals.
10. Task 10: Final consistency verification and PR preparation.
