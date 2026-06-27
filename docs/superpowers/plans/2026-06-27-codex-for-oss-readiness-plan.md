# Codex for OSS Readiness Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use @superpowers:subagent-driven-development (recommended) or @superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Improve repository and project operations so this OSS appears maintainer-driven and reusable enough to increase approval confidence for OpenAI Codex for OSS review.

**Architecture:** Keep app architecture unchanged. Refactor project documentation and governance around a migration-lab identity, with explicit maintenance operating procedures, proof-of-use signals, and external visibility evidence captured in versioned docs.

**Tech Stack:** GitHub (Issues/PR/Labels/Releases), Markdown, GitHub CLI (`gh`), GitHub Actions, shell scripts.

---

## File structure to touch

- Create `docs/superpowers/plans/2026-06-27-codex-for-oss-readiness-spec.md`
  - Single source of acceptance criteria for the Codex application phase.
- Modify `README.md`
  - Add an explicit "Codex for OSS submission readiness" section and maintenance evidence summary.
- Modify `docs/codex-for-oss.md`
  - Add a submission-ready, non-claiming positioning and evidence checklist.
- Modify `LICENSE`
  - Ensure standard, parser-friendly Apache 2.0 content.
- Create `MAINTAINERS.md`
  - Maintainer roles, release cadence, and decision rights.
- Create `ROADMAP.md`
  - Future milestones and explicit maintenance commitments.
- Create `.github/CODEOWNERS`
  - Lightweight ownership policy for PR review safety.
- Modify `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `SECURITY.md`
  - Add concrete contributor workflow and release discipline.
- Modify `.github/ISSUE_TEMPLATE/config.yml`
  - Add blank-issues off, label suggestions, contributor guidance.
- Modify `.github/ISSUE_TEMPLATE/bug_report.md`
- Modify `.github/ISSUE_TEMPLATE/migration_task.md`
  - Add severity/info fields and acceptance criteria aligned to migration tasks.
- Modify `.github/pull_request_template.md`
  - Require build output + reviewability details before merge.
- Modify `docs/release-guide-v0.2.0-oss-alpha.1.md`
  - Add explicit v0.2 release evidence steps and evidence output checklist.
- Modify `CHANGELOG.md`
  - Add clear `Unreleased` section for next docs-only maintenance entries.
- Create `docs/codex-for-oss-application-package.md`
  - Final application text for submission copy/paste.
- Optionally create `scripts/codex-metrics.sh`
  - Reusable command list to snapshot GitHub/community metrics.

---

### Task 1: Create Codex readiness spec and baseline snapshot

**Files:**
- Create: `docs/superpowers/plans/2026-06-27-codex-for-oss-readiness-spec.md`
- Modify: `README.md` (briefly add a pointer to this work)

- [ ] **Step 1: Define acceptance criteria in one file**

Create a concise spec checklist with measurable acceptance criteria: community signals, maintenance signals, documentation clarity, and release reliability.

- [ ] **Step 2: Verify checklist is discoverable from README**

Run:
```bash
rg -n "Codex for OSS|readiness|application" -n README.md docs/superpowers/plans/2026-06-27-codex-for-oss-readiness-spec.md
```
Expected: at least one hit in each file.

- [ ] **Step 3: Write minimal README pointer section**

Add 2-4 lines in README linking to this spec and the submission package.

- [ ] **Step 4: Confirm docs render path**

Run:
```bash
sed -n '1,80p' docs/superpowers/plans/2026-06-27-codex-for-oss-readiness-spec.md
```
Expected: readable markdown with section headers.

- [ ] **Step 5: Commit**

```bash
git add README.md docs/superpowers/plans/2026-06-27-codex-for-oss-readiness-spec.md
git commit -m "docs: add codex readiness spec and README pointer"
```

---

### Task 2: Standardize legal/metadata baseline (license reliability)

**Files:**
- Modify: `LICENSE`
- Modify: `CHANGELOG.md`

- [ ] **Step 1: Record current license detection result (expected fail if metadata is inconsistent)**

Run:
```bash
gh api repos/leesunghyun/android-viewmodel-migration-lab/license -q .spdx_id
```
Expected: output is `Apache-2.0`.

- [ ] **Step 2: Replace LICENSE with canonical Apache 2.0 text if necessary**

Use official SPDX-compatible Apache 2.0 text; avoid any additional custom statements.

- [ ] **Step 3: Verify canonical header and SPDX id**

Run:
```bash
head -n 3 LICENSE
rg -n "Apache License" LICENSE
```
Expected: standard Apache 2.0 header remains intact and parseable.

- [ ] **Step 4: Keep changelog entry for metadata cleanup**

Add `Unreleased -> Added` bullet in `CHANGELOG.md` for this maintenance item.

- [ ] **Step 5: Commit**

```bash
git add LICENSE CHANGELOG.md
git commit -m "chore: normalize Apache license metadata"
```

---

### Task 3: Define maintainer governance and roadmap documents

**Files:**
- Create: `MAINTAINERS.md`
- Create: `ROADMAP.md`
- Create: `.github/CODEOWNERS`
- Modify: `docs/oss-remake-task-plan.md` (add link to new docs if needed)

- [ ] **Step 1: Write MAINTAINERS with roles and escalation policy**

Create owner roles, review policy, release owner, and emergency contact policy.

- [ ] **Step 2: Write ROADMAP.md with 1-quarter cadence**

Define v1/v2 milestones, explicit maintenance obligations, and acceptance criteria.

- [ ] **Step 3: Add CODEOWNERS for app + docs + workflow paths**

Set one maintainer or team for `.github/*`, `app/*`, `docs/*`, and release files.

- [ ] **Step 4: Validate ownership path coverage**

Run:
```bash
cat .github/CODEOWNERS
```
Expected: all critical paths are explicitly covered.

- [ ] **Step 5: Commit**

```bash
git add MAINTAINERS.md ROADMAP.md .github/CODEOWNERS
git commit -m "docs: add maintainer ownership and roadmap guidance"
```

---

### Task 4: Strengthen contributor governance files

**Files:**
- Modify: `CONTRIBUTING.md`
- Modify: `CODE_OF_CONDUCT.md`
- Modify: `SECURITY.md`

- [ ] **Step 1: Expand CONTRIBUTING into review and branch policy**

Add: branch naming, commit message style, PR size constraints, test expectations, and merge blocking conditions.

- [ ] **Step 2: Expand CODE_OF_CONDUCT with practical escalation policy**

Add contact point for disputes and explicit moderation steps.

- [ ] **Step 3: Expand SECURITY with vulnerability report workflow**

Add `SECURITY.md` flow: severity labels, response windows, and triage handoff.

- [ ] **Step 4: Verify language consistency with README and codex docs**

Run:
```bash
rg -n "contribute|merge|review|security|vulnerability|PR" CONTRIBUTING.md CODE_OF_CONDUCT.md SECURITY.md
```
Expected: no contradiction with README claims.

- [ ] **Step 5: Commit**

```bash
git add CONTRIBUTING.md CODE_OF_CONDUCT.md SECURITY.md
git commit -m "docs: strengthen contributor and security governance"
```

---

### Task 5: Improve issue and pull request templates for maintainer workflows

**Files:**
- Modify: `.github/ISSUE_TEMPLATE/config.yml`
- Modify: `.github/ISSUE_TEMPLATE/bug_report.md`
- Modify: `.github/ISSUE_TEMPLATE/migration_task.md`
- Modify: `.github/pull_request_template.md`

- [ ] **Step 1: Add config.yml with blank issues disabled**

Create/modify:
- `blank_issues_enabled: false`
- useful labels for bug, migration-task, docs, help wanted

- [ ] **Step 2: Enrich bug report template**

Add required fields: `repro steps`, `expected/actual`, `Android version`, `module`, `JDK`, `log snippet`, and optional APK/commit link.

- [ ] **Step 3: Enrich migration task template**

Add acceptance criteria checklist and migration-impact area (legacy, reducer, ViewModel, UI, CI).

- [ ] **Step 4: Enforce PR evidence in PR template**

Require: test command + result, affected files, migration intent, and reviewer notes.

- [ ] **Step 5: Run template sanity check**

Run:
```bash
sed -n '1,220p' .github/ISSUE_TEMPLATE/config.yml
sed -n '1,260p' .github/pull_request_template.md
```
Expected: all templates include structured fields and no unresolved placeholders.

- [ ] **Step 6: Commit**

```bash
git add .github/ISSUE_TEMPLATE/config.yml .github/ISSUE_TEMPLATE/bug_report.md .github/ISSUE_TEMPLATE/migration_task.md .github/pull_request_template.md
git commit -m "docs: tighten issue/PR templates for maintainer workflow"
```

---

### Task 6: Make maintenance signals explicit in project and release docs

**Files:**
- Modify: `README.md`
- Modify: `docs/codex-for-oss.md`
- Modify: `docs/release-guide-v0.2.0-oss-alpha.1.md`
- Modify: `CHANGELOG.md`

- [ ] **Step 1: Add a dedicated section in README for selection readiness**

Include what changed recently, proof artifacts, and where to find verification outputs.

- [ ] **Step 2: Rewrite docs/codex-for-oss.md as public maintainer rationale**

Make it explicit that this is a reusable migration reference, not production product.

- [ ] **Step 3: Update v0.2 release guide with evidence checklist**

Add fields to capture CI pass proof, community feedback count, and release artifact publication.

- [ ] **Step 4: Add changelog entry about readiness operations**

Record doc/ops updates under `Unreleased -> Changed` in `CHANGELOG.md`.

- [ ] **Step 5: Verify key claims in text are backed by files**

Run:
```bash
rg -n "release|CI|evidence|maintain|migration|roadmap|issue|PR" README.md docs/codex-for-oss.md docs/release-guide-v0.2.0-oss-alpha.1.md
```
Expected: no orphan claims.

- [ ] **Step 6: Commit**

```bash
git add README.md docs/codex-for-oss.md docs/release-guide-v0.2.0-oss-alpha.1.md CHANGELOG.md
git commit -m "docs: publish Codex submission-oriented maintenance signals"
```

---

### Task 7: Add metrics snapshot automation for external evidence

**Files:**
- Create: `scripts/codex-metrics.sh`
- Modify: `README.md` (optional link to latest evidence output)

- [ ] **Step 1: Add shell script to capture GitHub project metrics**

Script should output: stars, forks, open issues, closed issues 30 days, recent release count.

Example command skeleton in script:
```bash
star=$(gh api repos/leesunghyun/android-viewmodel-migration-lab --jq '.stargazers_count')
fork=$(gh api repos/leesunghyun/android-viewmodel-migration-lab --jq '.forks_count')
```

- [ ] **Step 2: Test script in current branch**

Run:
```bash
bash scripts/codex-metrics.sh > /tmp/codex-metrics.txt
cat /tmp/codex-metrics.txt
```
Expected: non-empty output with 4+ metric lines.

- [ ] **Step 3: Add script execution note in README**

Add a one-liner: `bash scripts/codex-metrics.sh` for readiness verification.

- [ ] **Step 4: Handle missing gh/jq dependencies gracefully**

Script should print a clear manual fallback command if tool missing.

- [ ] **Step 5: Commit**

```bash
git add scripts/codex-metrics.sh README.md
git commit -m "chore: add Codex readiness metric snapshot script"
```

---

### Task 8: Create submission package and external evidence workflow

**Files:**
- Create: `docs/codex-for-oss-application-package.md`
- Modify: `docs/oss-remake-task-plan.md` (link to this package and post-submission checklist)
- Modify: `README.md` (add package link under next milestone)

- [ ] **Step 1: Draft submission package content**

Include: short repo description, why it matters to Android ecosystem, maintenance model, proof links, and risk disclosure.

- [ ] **Step 2: Add external proof plan to package**

Include required artifacts:
- v0.2 release status
- release notes + release guide links
- issue/PR labels and review process
- demo artifact and smoke-test checklist

- [ ] **Step 3: Create explicit “no oversell” policy statement**

Use conservative wording about usage scale and call this a migration-reference lab.

- [ ] **Step 4: Link package from OSS docs and README**

Ensure discoverability from two files.

- [ ] **Step 5: Commit**

```bash
git add docs/codex-for-oss-application-package.md README.md docs/oss-remake-task-plan.md
git commit -m "docs: create codex for oss application package"
```

---

### Task 9: Build concrete community activity (external and GitHub)

**Files:**
- No repository files required initially; optionally update `docs/oss-remake-task-plan.md`.
- Create GitHub issues/PRs via GitHub CLI if configured.

- [ ] **Step 1: Create issue templates for external contribution on-boarding**

Create 3 issues tagged `good first issue` and `migration-task`:
- `Add migration step doc for reducer guard cases`
- `Refine PR review checklist`
- `Add small onboarding sample for CI failure triage`

- [ ] **Step 2: Assign labels via CLI**

Run:
```bash
gh label create "good first issue" --description "Ideal for first contributions" --color 1d76db
gh label create "migration-task" --description "OSS migration roadmap tasks" --color 0e8a16
gh label create "docs" --description "documentation improvements"
gh label create "test" --description "tests and smoke checks"
```
Expected: labels exist on repository.

- [ ] **Step 3: Publish 1st external visibility task**

Open one short write-up draft file: `docs/codex-for-oss-announce-draft.md` with target channel and key message.

- [ ] **Step 4: Verify GitHub receives contributions signals**

Run:
```bash
gh issue list --state open --limit 5
```
Expected: newly created migration-task/open issues are visible.

- [ ] **Step 5: Commit optional docs draft only**

```bash
git add docs/codex-for-oss-announce-draft.md
git commit -m "docs: add community outreach draft for codex readiness"
```

> Note: actual posting to Qiita/Zenn/Reddit/Slack is not a repository commit-only task; track it in the execution log as completed when published.

---

### Task 10: Final readiness verification and PR bundle

**Files:**
- Modify: none (verification pass)

- [ ] **Step 1: Verify submission artifact files exist**

Run:
```bash
rg --files docs/superpowers/plans/2026-06-27-codex-for-oss-readiness-spec.md docs/codex-for-oss-application-package.md scripts/codex-metrics.sh MAINTAINERS.md ROADMAP.md .github/CODEOWNERS
```
Expected: all files listed.

- [ ] **Step 2: Verify GitHub and release signals are visible**

Run:
```bash
gh api repos/leesunghyun/android-viewmodel-migration-lab

gh api repos/leesunghyun/android-viewmodel-migration-lab/releases -q '.[0:3]'
```
Expected: release data exists and is valid JSON-like output in CLI.

- [ ] **Step 3: Open final PR and request review**

Create PR from feature branch with title:
```
Add Codex for OSS readiness package (docs governance, metrics, maintainer flow)
```
Expected: PR includes all committed tasks and notes required evidence.

- [ ] **Step 4: Create final summary check list in PR body**

- Which evidence was added/updated
- Metrics snapshot date
- External publication list (if done)

- [ ] **Step 5: Commit final docs snapshot**

```bash
git add -A
git commit -m "docs: bundle codex-for-oss readiness deliverables"
```
