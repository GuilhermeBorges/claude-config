#!/bin/bash
BUN="$HOME/.bun/bin/bun"
input=$(cat)

parsed=$("$BUN" -e "
const d = JSON.parse(process.argv[1]);
const model = d.model?.display_name || '?';
const pct = Math.round(d.context_window?.used_percentage || 0);
const dir = d.workspace?.current_dir || '.';
console.log(model + '|' + pct + '|' + dir);
" "$input" 2>/dev/null)

MODEL=$(echo "$parsed" | cut -d'|' -f1)
PCT=$(echo "$parsed" | cut -d'|' -f2)
DIR=$(echo "$parsed" | cut -d'|' -f3-)

BRANCH=$(git -C "$DIR" branch --show-current 2>/dev/null)
[ -z "$BRANCH" ] && BRANCH="no repo"

echo "[$MODEL] $BRANCH | ${PCT}% context"
