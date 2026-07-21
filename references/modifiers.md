# Modifiers

The 32 base cards cover the territory. The modifier layer gives you **9,504 concrete briefs** on top of them (32 × 3 × 3 × 33) without diluting a single anchor.

## The rule

Modifiers are **within-card variation**, not blending. A `manga-anime` brief with `mode=dark` and `accent=broadsheet` is still recognizably manga-anime, screentones and speed lines and all. The base card wins every conflict; modifiers dial specific slots.

If a modifier would break the card's identity (a "muted" vaporwave, a "dark" botanical-plate on aged cream), the card overrides. Card identity > modifier compliance, always.

## Axis 1: mode (3 options)

Which surface the card sits on.

- **default** — as the card specifies. `swiss-international` = black on white. `terminal-mono` = phosphor on near-black. Use unless the roll says otherwise.
- **dark** — inverted surface. Light-card cards flip to a dark neutral of the same discipline (Swiss goes ink `#0C0C0C` fg on `#F5F5F5` bg → `#F5F5F5` fg on `#0C0C0C` bg, red accent stays). Cards that are *already* dark (terminal-mono, sci-fi-hud, vaporwave) treat `dark` as a no-op and stay speced.
- **inverted** — a bold, high-contrast inversion for a single hero surface. Not a whole-app mode. E.g., an editorial-magazine hero on ink `#1A1A1A` with cream body inside instead of the reverse. Use for one attention surface, then return to default.

**Cards where mode is fixed by the card** (mode roll → ignored, card wins): botanical-plate, ukiyo-e-woodblock, wabi-japanese-modernist, broadsheet-newspaper, art-deco, art-nouveau. The paper/surface color is the identity.

## Axis 2: scale personality (3 options)

Where type weight lives.

- **display-first** — one enormous headline (96-160px), body restrained (14-15px). Extreme scale contrast. Almost every hero screen is headline. Suits: swiss-international, gallery-monochrome, maximalist-expressive, editorial-magazine, vaporwave-synthwave, art-deco.
- **balanced** — as speced in the card. The headline is dominant but body has real presence (16-18px). Suits: humanist-warm, tactile-hardware, mid-century-modernist, botanical-plate, technical-blueprint.
- **body-first** — headline restrained (32-48px), body carries the weight, information density wins. Suits: utilitarian-dense, raw-brutalist, broadsheet-newspaper, terminal-mono, technical-blueprint dense mode.

Some cards resist a scale personality: `gallery-monochrome body-first` is anti-gallery. If the roll conflicts, the card wins; take the nearest compatible scale.

## Axis 3: accent card (33 options: none + 31 others)

Borrow **one** signature move from a second card as a functional accent. The base card carries 90%+ of the surface; the accent shows up in exactly one place, doing one job.

Examples of accents doing real work:

- `utilitarian-dense` + accent=`terminal-mono` → a mono log/console panel inside the dense app.
- `editorial-magazine` + accent=`broadsheet-newspaper` → masthead-flag section labels above magazine features.
- `sci-fi-hud` + accent=`terminal-mono` → mono readouts inside the glowing HUD panels.
- `swiss-international` + accent=`memphis-postmodern` → one flat geometric shape as a poster accent, nothing else changes.
- `humanist-warm` + accent=`botanical-plate` → hand-drawn botanical line details on empty states.
- `crypto-defi` + accent=`pixel-8bit` → pixel-art PFP avatars in a rounded gradient card app.

**Do not:** blend palettes, split the layout 50/50, or apply the accent in more than one surface. If you can't point at *one place* the accent lives, you're not using it, you're mixing.

**accent=none** is a legit roll. Straight base card, no accent. About 1 in 33 rolls.

## What NOT to modify

These are baked into the card and modifiers don't touch them:

- **Typeface family.** Every card names a face. Don't swap it under any modifier.
- **The signature move.** Modifiers don't remove or replace the card's signature move. They can only add an accent on top.
- **Voice.** The card's voice register is fixed. `manga-anime dark body-first` still writes copy in manga-anime voice, not utilitarian-dense voice.
- **Imagery treatment.** The card's photo/illustration recipe (duotone, screentone, cut-paper, etc.) is fixed.

## Reading a resolved brief

`bin/roll.sh` outputs something like:

```
DIRECTION: manga-anime (base 27)
MODE:      dark
SCALE:     display-first
ACCENT:    +broadsheet-newspaper (masthead-flag section labels)
BRIEF-ID:  27.2.1.28
```

That resolves to: manga-anime as the whole surface (ink/paper/screentones/speed lines), inverted onto a dark screen where the paper cream becomes deep ink and screentones sit on the shadow side, huge display headlines with tight body, and section headers that steal broadsheet's ALL-CAPS masthead flag. Commit and build.

BRIEF-ID is `card.mode.scale.accent` (accent 0 = none, 1-32 = card index). It's stable and reproducible — someone else rolling `27.2.1.28` gets the same brief.

## Deterministic re-roll

If you're building 6 pages and want the SAME direction across all of them, roll ONCE and reuse the BRIEF-ID. If you're building 6 *unrelated* things and want anti-sameness, roll every time.

For a project counter (deterministic divergence across your last N projects), advance the base card by 1 and re-roll the modifiers. Anchors rotate, modifiers randomize.
