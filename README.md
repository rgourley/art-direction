# art-direction

A Claude Code skill that stops AI-generated UI from all looking the same.

Every quality adjective (clean, modern, sleek, minimal, professional) resolves to the same point: the mean of the training data. That mean is the AI look: Inter/Geist, a purple-to-blue gradient, glassmorphism, `rounded-2xl` + `shadow-2xl` cards, a centered hero over three feature cards, emoji as icons. You cannot describe your way out of it with more quality words, because they all aim at the same center.

This skill aims somewhere else, on purpose.

## How it works

Three levers move away from the mean, and the skill pulls all three before any code is written:

1. **Named references beat adjectives.** "Looks like Teenage Engineering" carries a thousand concrete decisions the model already knows. "Clean and modern" carries zero. The deck is 16 committed directions, each anchored to real products and design traditions.
2. **Ban-lists cut off the default path.** A visual ban-list (no purple gradient, no glassmorphism, no `rounded-2xl` reflex) and a copy ban-list (no "supercharge / seamlessly / the future of X"). Negative constraints do work positive ones can't.
3. **Commit to one coherent system up front.** Type, color, grid, motion, imagery treatment, and voice are all decided before the first component. Assembling defaults component-by-component is how the generic look creeps back in.

**Selection is seed-by-default.** The skill rolls `RANDOM % 16` and commits, because fit-selection quietly drifts toward the safe, obvious pick and successive projects converge again. A random seed can't rationalize toward safe, and it forces divergence over time, which is the whole point. Fit-selection stays available as an explicit override for projects that genuinely demand a specific look.

Every card art-directs the words too. A risograph zine and a blueprint infra tool must not share a voice, so each direction carries a tone spec, not just a palette.

## The deck

16 directions, none of which is "clean modern SaaS" (that card is deliberately absent):

`swiss-international` · `neo-brutalist` · `raw-brutalist` · `editorial-magazine` · `terminal-mono` · `tactile-hardware` · `technical-blueprint` · `memphis-postmodern` · `humanist-warm` · `gallery-monochrome` · `retro-computing` · `risograph-print` · `sci-fi-hud` · `maximalist-expressive` · `utilitarian-dense` · `earthy-naturalist`

Each card specifies references, feel, type (with a free Google Fonts fallback), color, layout grammar, motion, a signature move, an imagery treatment, and a voice.

## Copy protections

Generic marketing-speak is the copy equivalent of the purple gradient. The skill guards against it two ways: guidance in `references/copy.md` (the tell list, per-surface fixes for headlines/CTAs/empty states/errors, and same-message-in-six-voices examples), and a runnable linter that scans product copy for AI tells:

```sh
bin/check-copy.sh src/ app/ content/
```

HARD hits (supercharge, seamlessly, "the future of", em dashes, and the rest) exit 1 so it can gate a commit or run in CI. SOFT hits (leverage, robust, moreover) warn. Point it at product copy, not the guide itself, which lists every banned phrase as an example. The em-dash ban is Rob's hard rule; drop `—` from the script's HARD list if your team allows them.

## Files

```
SKILL.md              the workflow: roll → commit → load type/imagery/voice → ban-list → spec → build → verify
references/deck.md     the 16 directions, fully specified
references/assets.md   loading fonts so they don't degrade; placeholder images (keyless + Unsplash key); treatment recipes
references/copy.md     anti-AI copy protections: the tell list, per-surface fixes, same-message-different-voice
bin/check-copy.sh     a linter that flags AI copy tells (hype, em dashes) with file:line; HARD hits exit 1
examples/             two pages built by running the skill (see below)
```

## Examples

Built by actually running the skill, not hand-picked:

- **`examples/gauge-blueprint.html`**, a fit-selected SLO-monitoring SaaS landing in `technical-blueprint`. Dimension lines annotate the UI as a spec sheet.
- **`examples/marl-risograph.html`**, a random seed (roll landed on `risograph-print`) applied to an indie fashion label. Overprinted spot inks, paper grain, duotone-treated placeholder photos. Proof the deck holds up even on an "off" pick.

Open either file in a browser. `marl-risograph.html` loads placeholder photos from an external host, so it needs a network connection.

## Install

The skill lives in this repo and is symlinked into Claude Code's skills directory:

```sh
ln -s ~/art-direction ~/.claude/skills/art-direction
```

Edits to the repo update the live skill. Claude Code invokes it automatically before building product UI, or on request with `/art-direction`.

Not for finance UIs (use `financial-ui-personas`) or marketing sites with an established brand system.

## Fonts and images

- **Fonts:** every card names a face and a free fallback. The skill loads it and verifies with `document.fonts.check()`, because a face that silently falls back to system/Inter has already drifted to the mean.
- **Images:** keyless placeholders (LoremFlickr, Picsum) by default, an optional Unsplash tier when an `UNSPLASH_ACCESS_KEY` is set. Every placeholder runs through the card's treatment so raw stock never breaks the aesthetic. In a CSP-locked context (Claude Artifacts) external images are blocked, so use inline SVG or CSS treatments instead. See `references/assets.md`.
