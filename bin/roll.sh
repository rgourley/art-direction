#!/usr/bin/env bash
# roll.sh — roll a full art-direction brief: base card + mode + scale + accent.
# Part of the art-direction skill. Output is a resolved brief; commit to it.
#
# Usage:
#   bin/roll.sh                    # random roll (default use)
#   bin/roll.sh 27.2.1.28          # replay a specific brief-id
#   bin/roll.sh --n 5              # roll 5 briefs (project-set divergence check)
#   bin/roll.sh --card manga-anime # pin base card, randomize modifiers
#
# BRIEF-ID format: <card>.<mode>.<scale>.<accent>
#   card:   1-32   (see references/deck.md)
#   mode:   1=default  2=dark  3=inverted
#   scale:  1=display-first  2=balanced  3=body-first
#   accent: 0=none  1-32=index of accent card
#
# Space: 32 × 3 × 3 × 33 = 9,504 concrete briefs.

set -uo pipefail

cards=(
  swiss-international neo-brutalist raw-brutalist editorial-magazine terminal-mono
  tactile-hardware technical-blueprint memphis-postmodern humanist-warm gallery-monochrome
  retro-computing risograph-print sci-fi-hud maximalist-expressive utilitarian-dense earthy-naturalist
  bauhaus-constructivist art-deco frutiger-aero mid-century-modernist cranbrook-deconstructed
  ukiyo-e-woodblock zine-cutup wabi-japanese-modernist
  comic-pop vaporwave-synthwave manga-anime broadsheet-newspaper botanical-plate
  crypto-defi art-nouveau pixel-8bit
)

modes=(default dark inverted)
scales=(display-first balanced body-first)

# Cards whose paper/surface color IS the identity — mode roll is a no-op, stays default.
fixed_mode_cards=(
  botanical-plate ukiyo-e-woodblock wabi-japanese-modernist
  broadsheet-newspaper art-deco art-nouveau
)

is_fixed_mode() {
  local card=$1
  for c in "${fixed_mode_cards[@]}"; do
    [[ "$c" == "$card" ]] && return 0
  done
  return 1
}

roll_one() {
  local card_idx mode_idx scale_idx accent_idx
  card_idx=$(( RANDOM % 32 + 1 ))
  mode_idx=$(( RANDOM % 3 + 1 ))
  scale_idx=$(( RANDOM % 3 + 1 ))
  accent_idx=$(( RANDOM % 33 ))                # 0..32, 0 = none
  # Reroll accent if it collides with base
  while (( accent_idx == card_idx )); do
    accent_idx=$(( RANDOM % 33 ))
  done
  print_brief "$card_idx" "$mode_idx" "$scale_idx" "$accent_idx"
}

print_brief() {
  local card_idx=$1 mode_idx=$2 scale_idx=$3 accent_idx=$4
  local card mode scale accent
  card="${cards[$((card_idx-1))]}"
  mode="${modes[$((mode_idx-1))]}"
  scale="${scales[$((scale_idx-1))]}"

  if (( accent_idx == 0 )); then
    accent="none"
  else
    accent="+${cards[$((accent_idx-1))]}"
  fi

  # Card-override: mode gets pinned to default for fixed-mode cards.
  local mode_note=""
  if is_fixed_mode "$card" && [[ "$mode" != "default" ]]; then
    mode_note="  (card override: paper/surface fixed, ignore roll)"
    mode="default"
    mode_idx=1
  fi

  local brief_id="${card_idx}.${mode_idx}.${scale_idx}.${accent_idx}"

  cat <<EOF
DIRECTION: ${card}  (base ${card_idx})
MODE:      ${mode}${mode_note}
SCALE:     ${scale}
ACCENT:    ${accent}
BRIEF-ID:  ${brief_id}

Commit to the base card. Modifiers dial specific slots — they don't blend cards.
See references/deck.md for ${card}, references/modifiers.md for how to apply.

EOF
}

# ---- args ----

if [[ $# -eq 0 ]]; then
  roll_one
  exit 0
fi

# --n N: roll N times (useful for checking divergence across a set of projects)
if [[ "$1" == "--n" && $# -ge 2 ]]; then
  n=$2
  for ((i=0; i<n; i++)); do
    roll_one
    echo "---"
  done
  exit 0
fi

# --card <name>: pin the base card, randomize modifiers
if [[ "$1" == "--card" && $# -ge 2 ]]; then
  target="$2"
  card_idx=0
  for i in "${!cards[@]}"; do
    if [[ "${cards[$i]}" == "$target" ]]; then
      card_idx=$((i+1))
      break
    fi
  done
  if (( card_idx == 0 )); then
    echo "Unknown card: $target" >&2
    echo "Valid cards:" >&2
    printf '  %s\n' "${cards[@]}" >&2
    exit 2
  fi
  mode_idx=$(( RANDOM % 3 + 1 ))
  scale_idx=$(( RANDOM % 3 + 1 ))
  accent_idx=$(( RANDOM % 33 ))
  while (( accent_idx == card_idx )); do accent_idx=$(( RANDOM % 33 )); done
  print_brief "$card_idx" "$mode_idx" "$scale_idx" "$accent_idx"
  exit 0
fi

# BRIEF-ID replay: card.mode.scale.accent
if [[ "$1" =~ ^([0-9]+)\.([0-9]+)\.([0-9]+)\.([0-9]+)$ ]]; then
  c=${BASH_REMATCH[1]}
  m=${BASH_REMATCH[2]}
  s=${BASH_REMATCH[3]}
  a=${BASH_REMATCH[4]}
  if (( c < 1 || c > 32 || m < 1 || m > 3 || s < 1 || s > 3 || a < 0 || a > 32 )); then
    echo "Brief-id out of range: $1  (expected card.1-32 mode.1-3 scale.1-3 accent.0-32)" >&2
    exit 2
  fi
  print_brief "$c" "$m" "$s" "$a"
  exit 0
fi

echo "Usage: $(basename "$0") [BRIEF-ID | --n N | --card NAME]" >&2
exit 2
