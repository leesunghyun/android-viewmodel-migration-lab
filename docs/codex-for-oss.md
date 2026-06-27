# Codex for OSS

이 프로젝트는 AI가 임의로 코드를 재작성하는 방식이 아닙니다.

사람과 AI 코딩 에이전트가 같은 마이그레이션 가이드라인을 보고, 작은 PR 단위로 안전하게 진행하도록 설계된 `legacy Android shared-state migration` 레퍼런스 프로젝트입니다.

핵심 원칙:

- 한 번에 하나의 작은 PR
- PR마다 하나의 명확한 마이그레이션 목표
- 상태 변경 로직은 테스트로 보호
- 아키텍처 변경 시 문서 동기화 필수
- 머지 전 `./gradlew test` / `./gradlew assembleDebug` 증빙

이 저장소는 **운영 가능한 마이그레이션 레퍼런스**를 만드는 것을 목표로 하며, 생산 서비스 앱을 대체하는 것이 목적이 아닙니다.

## What this project can claim

- 반복적인 legacy Android 공유 상태 마이그레이션 문제를 재현 가능한 샘플로 정리
- PR 단위 전환을 문서/테스트/릴리스와 함께 운영
- 공개된 이슈·PR 템플릿·릴리스 가이드로 유지관리 가능성 강화

## What this project cannot claim

- 앱 사용량, 트래픽, 수익, 실서비스 품질 보장치로 해석해서는 안 됩니다.
- 특정 조직/클라이언트 배포를 위한 제품 배포본이 아닙니다.

## 운영 원칙 (Codex 제출 시 설명 템플릿)

1. 레거시 앱(`legacy-app/`)은 참고 보존
2. 현대 앱은 작은 PR로 증분 적용
3. 변경 시 문서, 테스트, CI 증빙 동반
4. 공개 이슈 라벨/템플릿으로 기여 진입 장벽 낮춤
5. 릴리스 태그 기준으로 상태 추적

## 문서 규칙

- PR 당 하나의 목적
- 문서와 코드 정합성 유지
- `docs/oss-remake-task-plan.md`를 기준으로 단계 진행

## 리뷰 대응 규칙

- 블로킹/비블로킹 리뷰를 분리해 반영
- 재현 요청 시: 환경(OS/JDK/Android Studio), 로그, 명령어를 우선 수집
- 반복 이슈 대응 시, 후보 원인 3~5개와 우선 순위를 함께 제시

## 제출용 진정성 문구 체크리스트

- `docs/codex-for-oss-application-package.md`는 사용량 과장 없이 작성
- 제출 본문에는 “교육용 migration lab” 성격을 분명히 표시
- 최근 메트릭 및 유지관리 증거를 함께 링크

## 1) 작업 전 확인

1. `docs/oss-remake-task-plan.md`를 Source of Truth로 확인
2. 현재 브랜치 상태를 정리해 현재 단계(문서/구현/테스트/릴리스)와 맞추기
3. 다음 PR 범위를 하나의 목표로 고정

범위를 벗어나는 변경은 피하고, 필요하면 다음 PR로 분리합니다.

## 2) 구현 단계별 기본 규칙

- 한 PR당 한 단위: `Baseline → State/Reducer → ViewModel → UI → 테스트/CI → 문서`
- 코드가 바뀌면 반드시 대응 문서를 같이 업데이트
- 기존 동작을 보호: `legacy-app`은 아카이브로 유지
- 빌드 대상은 1차로 현대 `app/` 중심

## 3) PR 생성 전 체크리스트

- PR 제목은 현재 단계가 드러나게 작성
  - 예: `Add migration documentation`, `Add Android CI workflow`
- 설명에는 완료 범위/미완료 범위 분리
- PR 설명에 빌드 검증 결과 반영
- CI 관련 PR에서는 최소 `./gradlew test`, `./gradlew assembleDebug` 여부를 넣고, 실행 환경(JDK/OS)을 남김

## 4) 문서 우선 원칙

- 코드가 추가되면 해당 문서 파일을 바로 작성/수정
  - 02-modern-architecture
  - 03-shared-state-problem
  - 04-livedata-to-stateflow
  - 05-compose-ui
- 문서는 최신 코드 기준으로 유지 (`README`와 링크도 동기화)

## 5) 리뷰 대응 규칙

- 리뷰 코멘트는 블로킹/비블로킹을 분리해 반영
- “재확인” 요청은 실행 환경 불일치 가능성을 가정하고 재현 정보(환경/로그/명령어)로 대응
- 반복 오류 발생 시 원인 후보 3~5개를 빠르게 추리고, 가장 비용 효율적인 해결을 우선 적용

## 6) 다음 단계 진입 기준

문서 단계가 끝나면 출시 준비로 이동합니다.

- `v0.1.0-oss-alpha.1` 태그
- Release Notes 작성
- 변경 범위를 유지한 README/체크리스트 정리 완료
