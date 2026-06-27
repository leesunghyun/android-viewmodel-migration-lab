# v0.2.0-oss-alpha.1 - Android ViewModel Migration Lab Alpha

이 릴리스는 v0.2.0-oss-alpha.1 준비 기준으로 반영한 변경 사항을 정리한 노트입니다.

## Summary

- Improve article detail validation UX with required field guard and inline feedback
- Add missing reducer safety coverage for invalid article selection paths
- Expand Compose UI smoke tests for invalid/unsaved behaviors
- Replace v0.2 demo placeholder with a real screen recording
- Add v0.2 release guide and align repository documentation

## Added

- Article detail validation in `ArticleDetailScreen`
  - Title and body required checks
  - Inline validation text for missing values
  - Save button disabled until all validations pass
- State safety in `ArticleListReducer`
  - `SelectArticle` handles unknown IDs by clearing invalid selection state
- Unit test coverage
  - `selectArticle_invalidId_clearsSelectionForInvalidStateSafety` added in `ArticleListReducerTest`
- Compose UI smoke test expansion
  - Save/validation disabled behavior
  - Back-without-save flow keeps list unchanged
- Documentation and process updates
  - `docs/release-guide-v0.2.0-oss-alpha.1.md` added
  - README and roadmap/checklist text synchronized
  - `docs/roadmap-v0.2.0.md` updated with v0.2 completion status

## Release details

- Release notes and guides are available for this alpha iteration
- Android release pipeline is tag-driven through `v*` tags
- APK is packaged as debug artifact for alpha verification (not production artifact)

## Validation notes

- CI check: `Android CI`
- Manual smoke path checked on physical device for:
  - Detail edit save path
  - Back without saving path
  - Required validation behavior

## Known limitations

- v0.2.0-oss-alpha.1 is prepared for continuity; publish timing and additional UX polish remain subject to future follow-up PRs.
