#!/usr/bin/env bash
set -euo pipefail

REPO="leesunghyun/android-viewmodel-migration-lab"

echo "snapshot_at=$(date -u '+%Y-%m-%dT%H:%M:%SZ')"
echo "repository=$REPO"

if ! command -v gh >/dev/null 2>&1; then
  echo "gh=missing"
  echo "manual_command=gh release list --repo $REPO"
  echo "manual_metrics=(stars/forks/open_issues) from GitHub UI"
  exit 0
fi

echo "gh=available"

if ! command -v jq >/dev/null 2>&1; then
  echo "jq=missing"
  echo "manual_command=gh api repos/$REPO"
  exit 0
fi

echo "jq=available"

meta=$(gh api repos/$REPO --jq '{stars: .stargazers_count, forks: .forks_count, openIssues: .open_issues_count, updated: .updated_at}')
stars=$(echo "$meta" | jq -r '.stars')
forks=$(echo "$meta" | jq -r '.forks')
open_issues=$(echo "$meta" | jq -r '.openIssues')
updated_at=$(echo "$meta" | jq -r '.updated')

releases=$(gh api repos/$REPO/releases --paginate --jq 'length')

seven_days_ago=""
if date -u -d '30 days ago' '+%Y-%m-%d' >/dev/null 2>&1; then
  seven_days_ago="$(date -u -d '30 days ago' '+%Y-%m-%d')"
elif date -u -v-30d '+%Y-%m-%d' >/dev/null 2>&1; then
  seven_days_ago="$(date -u -v-30d '+%Y-%m-%d')"
else
  seven_days_ago="$(date -u '+%Y-%m-01')"
fi

closed_issues_30d=$(gh api \
  -X GET "search/issues?q=repo:$REPO+type:issue+is:closed+closed:>=$seven_days_ago" \
  --jq '.total_count')

labels=$(gh label list --json name | jq -r 'length')

printf 'stars=%s\n' "$stars"
printf 'forks=%s\n' "$forks"
printf 'open_issues=%s\n' "$open_issues"
printf 'closed_issues_30d=%s\n' "$closed_issues_30d"
printf 'releases=%s\n' "$releases"
printf 'labels=%s\n' "$labels"
printf 'repo_last_updated=%s\n' "$updated_at"
