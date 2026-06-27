# Release Guide: v0.2.0-oss-alpha.1

이 문서는 Android ViewModel Migration Lab의 v0.2.0-oss-alpha.1 릴리스를 위한 체크리스트입니다.

## 1) Prerequisites

- PR #22(`Improve article validation and test coverage`)가 `main`에 머지되어야 함
- `README.md`, `CHANGELOG.md` 및 v0.2 릴리스 문서가 반영되어 있어야 함
- CI (`./gradlew test`, `./gradlew assembleDebug`)가 통과해야 함

## 2) Release tag

```bash
git fetch --all --prune
git checkout main
git pull origin main
git tag v0.2.0-oss-alpha.1
git push origin v0.2.0-oss-alpha.1
```

## 3) GitHub Release

### 제목

`v0.2.0-oss-alpha.1 - Android ViewModel Migration Lab Alpha`

### 본문

`docs/release-notes-v0.2.0-oss-alpha.1.md`을 사용

### CLI 예시

```bash
gh release create v0.2.0-oss-alpha.1 \
  --title "v0.2.0-oss-alpha.1 - Android ViewModel Migration Lab Alpha" \
  --notes-file docs/release-notes-v0.2.0-oss-alpha.1.md
```

## 4) GitHub Actions 자동 릴리스(권장)

`main`에서 `v0.2.0-oss-alpha.1` 태그를 push하면 `.github/workflows/release.yml`에서 릴리스가 자동 실행됩니다.

- `./gradlew test` 재실행
- `./gradlew assembleDebug` 재실행
- `docs/release-notes-v0.2.0-oss-alpha.1.md` 존재 검증
- `app-debug.apk` 업로드

## 5) 릴리스 범위(확인용)

- 저장 유효성 검사: 제목/본문 필수 입력 및 실시간 검증 반영
- 테스트: 잘못된 선택값 방어 + Back-without-save 플로우 커버
- UI/동영상: 데모 GIF가 실제 앱 흐름으로 교체됨
- 문서: v0.2 체크리스트 및 릴리스 링크 정합성 정리
