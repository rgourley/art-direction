#!/usr/bin/env bash
# check-copy.sh — flag AI copy tells in UI/product text.
# Part of the art-direction skill. HARD hits exit 1 (gate a commit); SOFT hits warn.
#
# Usage:
#   bin/check-copy.sh [path ...]        # defaults to current dir
# Scans .html .md .txt .jsx .tsx .ts .js .vue .svelte
#
# Point it at product copy (src/, app/, content/), NOT at the skill's own docs,
# which contain every banned phrase as an example.

set -uo pipefail

# Marketing hype + structural tells that are almost never right in UI copy.
# The trailing em dash (—) is a hard ban per Rob's writing rules; drop it if your team allows em dashes.
HARD='supercharge|superpowers?|unlock (your|the)|take (your|it|things) to the next level|next-level|the future of|reimagined|game[- ]?chang(er|ing)|revolutioniz|seamless(ly)?|effortless(ly)?|blazing[- ]?fast|lightning[- ]?fast|powerful yet simple|beautifully simple|join (thousands|millions|hundreds) of|loved by (developers|teams|thousands|everyone)|everything you need to|say goodbye to|made easy|in today.?s (fast-paced|digital|modern) world|cutting[- ]edge|state[- ]of[- ]the[- ]art|empower|elevate your|unleash|harness the power|one-stop shop|at your fingertips|—'

# Often tells, sometimes legitimate. Reported as warnings.
SOFT='leverage|utilize|robust|streamline|delve|tapestry|testament to|navigate the|in the realm of|when it comes to|that said|moreover|furthermore|in conclusion|ultimately,|it.?s worth noting|arguably|holistic|synerg|best-in-class|world-class|actionable insights|user-friendly|hassle-free|boost your|drive (growth|results|value)'

if [ "$#" -gt 0 ]; then TARGETS=("$@"); else TARGETS=("."); fi

RED=$'\033[31m'; YEL=$'\033[33m'; DIM=$'\033[2m'; RST=$'\033[0m'

scan() { # $1 = ERE pattern
  if command -v rg >/dev/null 2>&1; then
    rg -in --no-heading -o \
      -g '*.html' -g '*.md' -g '*.txt' -g '*.jsx' -g '*.tsx' -g '*.ts' -g '*.js' -g '*.vue' -g '*.svelte' \
      -e "$1" "${TARGETS[@]}" 2>/dev/null
  else
    grep -rInE \
      --include='*.html' --include='*.md' --include='*.txt' --include='*.jsx' --include='*.tsx' \
      --include='*.ts' --include='*.js' --include='*.vue' --include='*.svelte' \
      --exclude-dir='.git' --exclude-dir='node_modules' \
      -e "$1" "${TARGETS[@]}" 2>/dev/null
  fi
}

hard_hits="$(scan "$HARD")"
soft_hits="$(scan "$SOFT")"

status=0

if [ -n "$hard_hits" ]; then
  echo "${RED}HARD — fix before commit (marketing hype / em dashes):${RST}"
  echo "$hard_hits" | sed "s/^/  /"
  echo
  status=1
fi

if [ -n "$soft_hits" ]; then
  echo "${YEL}SOFT — review (often a tell, sometimes fine):${RST}"
  echo "$soft_hits" | sed "s/^/  /"
  echo
fi

if [ "$status" -eq 0 ] && [ -z "$soft_hits" ]; then
  echo "${DIM}clean — no AI copy tells found.${RST}"
fi

exit "$status"
