#!/usr/bin/env bash
# Safe Runner & Anti-Ban Cooldown Manager
set -euo pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TRACKER="$BASE_DIR/ACTIVITY_TRACKER.md"

log_activity() {
  local task="$1"
  local action_type="$2"
  local delay_mins="$3"
  local now="$(date -u +'%Y-%m-%d %H:%M')"

  echo "| $now | $task | $action_type | ${delay_mins}m | Completed | safe_runner |" >> "$TRACKER"
  echo "✓ Activity logged in ACTIVITY_TRACKER.md at $now"
}

record_new_skill() {
  local skill_name="$1"
  local description="$2"
  local usage_example="$3"
  local skill_dir="$BASE_DIR/new-skills/$skill_name"

  mkdir -p "$skill_dir"
  cat << SKILL_EOF > "$skill_dir/SKILL.md"
---
name: $skill_name
status: pending_user_audit
source: github_course_agent
date: $(date +'%Y-%m-%d')
---

# $skill_name

## الوصف والسياق (Description)
$description

## كيفية الاستخدام والتطبيق (Usage)
\`\`\`bash
$usage_example
\`\`\`

## التدقيق اليدوي (Manual Audit)
- [ ] تمت المراجعة من قبل Haj Hamoud
- [ ] صالحة للترقية إلى core-engine والأخوة
SKILL_EOF

  echo "✓ تم حفظ المهارة المعزولة [$skill_name] بنجاح داخل new-skills/"
}

# --- Routing ---
if [ "${1:-}" == "--log" ] && [ -n "${2:-}" ] && [ -n "${3:-}" ]; then
  log_activity "$2" "$3" "${4:-30}"
elif [ "${1:-}" == "--record-skill" ] && [ -n "${2:-}" ] && [ -n "${3:-}" ]; then
  record_new_skill "$2" "$3" "${4:-# No code example provided}"
else
  echo "Usage:"
  echo "  bash safe_runner.sh --log <task_name> <action_type> [delay_mins]"
  echo "  bash safe_runner.sh --record-skill <skill_name> <description> [example_code]"
fi
