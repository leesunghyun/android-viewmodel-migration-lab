# Changelog

## Unreleased

### Added

- Added article detail validation UX (required title/body checks + inline feedback + disabled save when invalid).
- Added reducer invalid-id guard test coverage.
- Expanded compose UI smoke tests for validation and back-without-save behavior.
- Prepared v0.2 release assets: `docs/release-guide-v0.2.0-oss-alpha.1.md`, `docs/release-notes-v0.2.0-oss-alpha.1.md`.

### Known limitations

- v0.2 release is prepared but tag/release has not been published yet.

## v0.1.0-oss-alpha.1 - 2026-06-07

### Added

- Rewrote README for OSS migration lab direction and status
- Added OSS metadata files
- Added GitHub pull request and issue templates
- Preserved original README in docs as legacy architecture archive
- Added modern Kotlin + Compose app baseline
- Added Article shared-state model and reducer foundation
- Added ViewModel + StateFlow state management
- Added reducer tests
- Added ViewModel tests
- Added Compose article list/detail screens
- Added Android CI workflow
- Added migration documentation set for modern architecture and state flow
- Added release workflow for tag-triggered `v0.1.0-oss-alpha.1` publish
- Added release notes and published `v0.1.0-oss-alpha.1` GitHub release (sample debug APK asset)

### Preserved

- Original 2017 Android AAC ViewModel sample preserved in `legacy-app/`
- `v0.1.0-oss-alpha.1` tag and GitHub Release published as first OSS alpha milestone

### Known limitations

- First alpha intentionally excludes DI frameworks (Hilt/Dagger), Navigation library, and database/cloud integrations.
- Legacy app is archived only and excluded from CI build scope.
