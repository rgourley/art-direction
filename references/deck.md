# Art Direction Deck

Sixteen committed directions for product UI. **None of them is "clean modern SaaS."** That absence is deliberate: the default AI look is the mean of the training data, so it is not on the menu. Every card here is a strong, coherent point of view that a real product or design tradition already proved.

Each card gives: **references** (real, so the model already knows the decisions), **feel**, **type**, **color**, **layout grammar**, **motion**, a **signature move** (the one thing that makes it unmistakable), **imagery** (how to treat photos/illustrations), and **voice** (how the copy should sound — the words get art-directed too). Build every component *and every sentence* to the card you pick. Do not blend cards.

**Load the typeface.** Every card names a face. A card whose type silently falls back to system/Inter has already drifted to the mean — that is a failure, not a shortcut. Most families here are on Google Fonts; Clash Display is on Fontshare; paid faces (Berkeley Mono, Neue Haas, Canela, Tiempos) self-host or use the card's `free:` fallback. Loading patterns: `references/assets.md`.

**Feed the imagery.** Photo- and illustration-led cards (fashion, gallery, editorial, earthy, maximalist) die with empty color blocks. During prototype/preview, use placeholders run through the card's **imagery** treatment, then swap for real licensed art before ship. Sources (keyless + optional Unsplash key), the CSP caveat, and treatment recipes: `references/assets.md`.

**Match the voice.** The copy is part of the art direction. Generic SaaS marketing-speak is the tonal equivalent of the purple gradient — see the copy ban-list in `SKILL.md`. Write to the card's **voice**, and for any long-form prose also apply the `writing-natural` skill.

Type notes list a primary (often paid/system) and a `free:` fallback on Google Fonts so the direction survives with no licensing.

---

## 1. swiss-international
**References:** Josef Müller-Brockmann, Massimo Vignelli, Unimark, the 1970s Swiss poster tradition.
**Feel:** Rigorous, silent, confident. The grid is the design.
**Type:** Neue Haas Grotesk / Helvetica Now. `free:` Arimo or system Helvetica. Tight tracking, huge scale contrast (a 14px body next to a 96px headline).
**Color:** Black on white, one saturated accent — classic Swiss red `#E30613`. No third color.
**Layout:** Strict 12-column grid, visible baseline grid, flush-left / ragged-right, generous columns, content snapped hard to the grid.
**Motion:** Almost none. Instant state changes. Maybe a 120ms fade.
**Signature move:** Oversized flush-left headline breaking across the grid, tiny caption set in the same family two steps down.
**Imagery:** Sparing. High-contrast B/W photography, or a single-color duotone in the accent red, snapped to the grid with 0px radius. Often type-only — let the grid carry it.
**Voice:** Precise, declarative, unadorned. No adjective that hasn't earned its place. Nouns and verbs. Ex: "Order. Structure. Clarity." · CTA "Begin."

## 2. neo-brutalist
**References:** Gumroad (2022 rebrand), Figma's brand, Poolside, early Vercel marketing.
**Feel:** Loud, flat, confident-ugly. Reads as "made by people, not a template."
**Type:** A chunky grotesque — Archivo Black / Space Grotesk for display, plain sans for body.
**Color:** Bright flat fills (no gradients) on off-white or bright yellow/blue. Pure black borders and text.
**Layout:** Thick 2-3px black borders on everything, hard offset drop shadows (`4px 4px 0 #000`, no blur), 0px radius, elements slightly overlapping.
**Motion:** Snappy. Buttons "press" by translating into their shadow.
**Signature move:** The hard black offset shadow on cards and buttons. Nothing else does that.
**Imagery:** Hard-cropped photos or flat-color cutout illustrations, posterized or high-contrast, inside a thick black border. Sticker energy — imagery can sit at a slight rotation.
**Voice:** Blunt, punchy, a little brash. Short sentences, talks like a person not a brand, mild swagger. Ex: "We built the thing you actually wanted." · CTA "Get it."

## 3. raw-brutalist
**References:** Bloomberg.com's utilitarian corners, Craigslist, Berkshire Hathaway, "brutalist websites" archive, Are.na's density.
**Feel:** Unstyled-on-purpose. Information over decoration. Anti-polish.
**Type:** System font stack or Times. Underlined links. No custom webfont at all.
**Color:** Default-blue links `#0000EE`, black text, white background. Borders are 1px `#000`.
**Layout:** Dense, hairline `<table>`-style rules, minimal whitespace, left-aligned everything, no cards.
**Motion:** None. This is the point.
**Signature move:** Real underlined blue hyperlinks and hairline dividers instead of cards and buttons.
**Imagery:** Untreated photos placed inline like a document image, small, no crop or filter. Often none at all — text is the interface.
**Voice:** Plain, utilitarian, zero marketing. States facts, no persuasion. Ex: "Free. No signup. Works in every browser." · CTA "Start."

## 4. editorial-magazine
**References:** The New York Times, Are.na, It's Nice That, Kinfolk, printed magazine spreads.
**Feel:** Considered, literary, print translated to screen.
**Type:** A serif display for headlines (Canela, Tiempos; `free:` Fraunces or Playfair Display), humanist sans for body (`free:` Source Serif + Inter-tightened is fine here since it's supporting).
**Color:** Warm off-white / cream `#FAF7F2`, near-black ink `#1A1A1A`, one editorial accent (deep red or ink blue).
**Layout:** Asymmetric multi-column, wide margins, drop caps, pull quotes, images that bleed to the edge.
**Motion:** Slow, gentle fades on scroll. Nothing bouncy.
**Signature move:** A large serif headline with a drop cap and a hanging pull-quote in the margin.
**Imagery:** Photography-led. Mix full-bleed hero shots with column-width figures. Warm/neutral grade, always captioned in small sans. Real photos, not illustration.
**Voice:** Literate, essayistic, a clear point of view. Full sentences, subordinate clauses allowed, a strong lede. Ex: "The quiet case for doing less, better." · CTA "Read the piece."

## 5. terminal-mono
**References:** Warp, Vercel deploy logs, Charm/Bubbletea TUIs, htop, the Linux console.
**Feel:** For people who live in a terminal. Text is the interface.
**Type:** Monospace everywhere — Berkeley Mono / JetBrains Mono / IBM Plex Mono (`free:` JetBrains Mono).
**Color:** Near-black `#0C0C0C`, foreground `#E4E4E4`, one phosphor accent (green `#00FF9C` or amber `#FFB000`). ANSI-style secondary colors.
**Layout:** Fixed-width columns, ASCII/box-drawing separators, blinking block cursor, `$` prompts, keyboard hints in `[brackets]`.
**Motion:** Typewriter reveal, cursor blink. No easing curves — things appear.
**Signature move:** A prompt line with a blinking cursor and box-drawing characters framing panels.
**Imagery:** Avoid photos. Use ASCII art, mono diagrams, or 1-bit dithered images. If a photo is unavoidable, posterize to 2 colors and dither.
**Voice:** Terse, technical, lowercase, command-like. Verbs first, no fluff. Ex: "ship faster. break less. sleep more." · CTA "$ npm i".

## 6. tactile-hardware
**References:** Teenage Engineering (OP-1, TP-7), Braun / Dieter Rams, Nothing OS, Panic (Playdate, Nova).
**Feel:** A physical device rendered in software. Every control looks pressable.
**Type:** A precise technical grotesque, small caps labels — `free:` Space Grotesk or IBM Plex Sans, mono for numeric readouts.
**Color:** Light grey device body `#D9D9D6`, dark controls, one or two saturated "button" colors (orange, red). Restrained, product-industrial.
**Layout:** Panels that look like faceplates, real knobs/sliders/segmented displays, tight labeling, screws-and-seams detailing optional.
**Motion:** Mechanical — knobs rotate, toggles throw, LEDs light. Short and physical.
**Signature move:** A skeuomorphic control (a knob, a segmented LED readout, a labeled hardware button) doing real work.
**Imagery:** Product renders on a seamless grey sweep, studio-lit, centered, with a soft contact shadow. Objects, not lifestyle photos.
**Voice:** Precise, understated, spec-forward. Materials and numbers over adjectives. Ex: "Eight knobs. One job. No menus." · CTA "See the specs."

## 7. technical-blueprint
**References:** Engineering drawings, Dieter Rams schematics, Stripe's early technical diagrams, architectural CAD, IBM's design language.
**Feel:** Precise, measured, annotated. Everything is dimensioned.
**Type:** IBM Plex Sans + IBM Plex Mono. Small-caps labels, numeric callouts in mono.
**Color:** Blueprint — pale grid on `#0A2540` navy, or dark lines on graph-paper white. Cyan `#00A3FF` annotations.
**Layout:** Visible measurement grid, dimension lines with arrowheads, corner registration marks, annotation leaders pointing at elements.
**Motion:** Lines draw themselves (stroke-dashoffset), measurements count up.
**Signature move:** Dimension lines and annotation callouts labeling parts of the UI as if it were a spec sheet.
**Imagery:** Photos go grayscale + low-opacity + a cyan tint, placed inside a dimensioned crop with corner marks and a measurement label — a "plate/figure," never a raw photo.
**Voice:** Exact, quantified, engineering register. Claims come with numbers. No hype words. Ex: "Measured to the millisecond. Priced to the seat." · CTA "Read the spec."

## 8. memphis-postmodern
**References:** Memphis Group (Ettore Sottsass), 1980s postmodern graphics, Slack's early brand, MTV bumpers.
**Feel:** Playful, geometric, deliberately clashing. Fun and a little chaotic.
**Type:** A rounded or geometric display sans — `free:` Poppins or Fredoka for display, clean sans body.
**Color:** Multiple saturated primaries at once — teal, hot pink, yellow, cobalt — on off-white. Squiggles and dots.
**Layout:** Floating geometric shapes (circles, zigzags, triangles) behind content, off-grid placement, confetti energy.
**Motion:** Bouncy, springy, shapes drift and rotate.
**Signature move:** Scattered geometric confetti shapes (squiggle, triangle, dotted arc) as decoration.
**Imagery:** Flat cutout illustration over photos. If photos, mask them into circles/blobs on a color-blocked background. Bold outlines, no soft shadows.
**Voice:** Playful, exclamatory, irreverent. Wordplay welcome, energy high. Ex: "Work that doesn't feel like work!" · CTA "Jump in."

## 9. humanist-warm
**References:** Basecamp / 37signals, Notion (warmer), Duolingo's softness, Headspace, Ghost.
**Feel:** Friendly, calm, human. Approachable without being childish.
**Type:** A warm humanist sans — `free:` Figtree, Nunito Sans, or Mulish. Comfortable body size (16-17px).
**Color:** Warm neutrals (sand, clay, soft cream), a friendly single accent (terracotta, sage, muted coral). Low saturation.
**Layout:** Generous rounded cards (12-16px radius), soft not-harsh shadows, roomy line-height, occasional hand-drawn touch or spot illustration.
**Motion:** Gentle ease-out, soft scale on hover. Nothing sharp.
**Signature move:** Warm-neutral palette with a single earthy accent and a hand-drawn spot detail.
**Imagery:** Illustration-led — soft spot illustrations, hand-drawn line work. If photos, warm-grade them and use rounded corners with generous padding.
**Voice:** Warm, plainspoken, reassuring, second-person. Talks *to* you, not at you. Ex: "Let's make this the easy part of your day." · CTA "Get started."

## 10. gallery-monochrome
**References:** Fashion houses (COS, Aesop, Jil Sander sites), art gallery sites, Awwwards minimal winners.
**Feel:** Luxury restraint. Confidence through emptiness.
**Type:** A refined grotesque or a high-contrast serif, set large with wide letter-spacing — `free:` Cormorant (serif) or Manrope (sans), used sparingly.
**Color:** Near-white `#F4F4F2` and near-black `#111`, one muted accent if any. Monochrome discipline.
**Layout:** Enormous negative space, few elements per screen, tiny navigation, imagery given room to breathe, ultra-wide margins.
**Motion:** Slow, cinematic fades and image reveals on scroll.
**Signature move:** A single element in a vast empty field, with tiny wide-tracked labels.
**Imagery:** Photography IS the layout. One large, full-bleed or generously-margined image per screen, desaturated or restrained color, editorial-grade. Give it room; never crowd it.
**Voice:** Sparse, confident, almost silent. Few words carrying high weight; restraint is the flex. Ex: "Less. Considered." · CTA "View."

## 11. retro-computing
**References:** Mac System 7, Windows 95/98, Y2K frutiger aero, Poolsuite.net, Winamp, early-web GeoCities-meets-craft.
**Feel:** Nostalgic desktop UI, beveled and chunky, knowingly retro.
**Type:** Pixel or system-bitmap for accents (`free:` Pixelify Sans, VT323), plain sans body.
**Color:** Battleship grey `#C0C0C0` chrome, teal desktop, beveled highlights (`#FFF` top-left, `#808080` bottom-right). Or Y2K aqua gradients + chrome.
**Layout:** Window chrome with title bars, close boxes, beveled buttons, inset fields, tabbed dialogs, status bars.
**Motion:** Instant, snappy window opens. No modern easing.
**Signature move:** A draggable window with a real title bar and beveled 3D buttons.
**Imagery:** Pixel/dithered art and bitmap icons. Photos get an 8-bit dither or CRT scanline overlay and sit framed inside window chrome.
**Voice:** Nostalgic, chirpy, knowingly dated. System-message cadence. Ex: "Welcome back! You have 1 new drop." · CTA "Open."

## 12. risograph-print
**References:** Risograph zines, screen-print posters, Present & Correct, indie publishing, Mailchimp's illustration era.
**Feel:** Handmade, limited-ink, textured. Digital pretending to be printed.
**Type:** A characterful sans or a quirky serif — `free:` Space Grotesk or DM Serif Display.
**Color:** Two or three riso spot inks that overprint — fluorescent pink `#FF48B0`, blue `#0078BF`, yellow — with visible overlap multiply. Paper `#F3EFE0`.
**Layout:** Slight misregistration between color layers, grain/noise texture overlay, halftone dots, hand-placed elements.
**Motion:** Minimal. A slight jitter or grain shimmer at most.
**Signature move:** Overprinting two spot colors so the overlap makes a third, plus paper grain.
**Imagery:** Duotone every photo in two spot inks (grayscale base + a lighten/darken color pair), add a halftone dot screen, grain, and a few px of misregistration. Everything looks screen-printed. (Recipe in `assets.md`.)
**Voice:** Handmade, honest, a little zine-y; imperfection on purpose. Craft over polish. Ex: "Ink smudges. Registration slips. We keep it." · CTA "Shop the drop."

## 13. sci-fi-hud
**References:** Cyberpunk 2077 UI, Blade Runner interfaces, Hyperliquid's glow, sci-fi film HUDs, Destiny menus.
**Feel:** High-tech, glowing, angular. A cockpit from the future.
**Type:** A wide technical/geometric sans, often uppercase — `free:` Orbitron (sparingly), Chakra Petch, or Rajdhani; mono for data.
**Color:** Deep space `#05060A`, glowing cyan `#22D3EE` and magenta `#F0F`, thin luminous strokes. Glow via box-shadow.
**Layout:** Angular clipped corners (clip-path), thin glowing frames, corner brackets, scanlines, data-readout panels.
**Motion:** Flicker-in, scanline sweep, glowing pulse.
**Signature move:** Angular clipped-corner panels with a glowing 1px border and corner brackets.
**Imagery:** Dark, high-contrast photos in a cyan/magenta duotone with a scanline overlay, framed inside clipped-corner HUD panels with a faint glow.
**Voice:** Clipped, high-stakes, systems-online register. Uppercase accents, imperative. Ex: "ALL SYSTEMS ONLINE. LET'S MOVE." · CTA "ENGAGE."

## 14. maximalist-expressive
**References:** Stripe Sessions site, Awwwards site-of-the-day winners, Active Theory, Obys, Cuberto.
**Feel:** Layered, kinetic, ambitious. The web as spectacle.
**Type:** A distinctive display face pushed huge, mixed weights and sizes — `free:` Clash Display (via Fontshare), Bricolage Grotesque.
**Color:** Rich, layered, saturated. Gradients allowed here (unlike everywhere else) but as bold color fields, not the AI purple-blue wash.
**Layout:** Overlapping layers, huge scroll-driven type, sticky sections, depth and parallax, elements that break the grid on purpose.
**Motion:** The whole point — scroll-linked animation, magnetic cursors, staggered reveals, marquees.
**Signature move:** Scroll-driven kinetic typography — text that scales, splits, or moves as you scroll.
**Imagery:** Full-bleed, layered, scaled huge with type overlapping it. Vivid or duotone grade, often motion-driven (parallax, reveal). Photos are set pieces, not thumbnails.
**Voice:** Bold, kinetic, big claims — but earned, not hollow. Superlatives with substance behind them. Ex: "The web, turned all the way up." · CTA "Experience it."

## 15. utilitarian-dense
**References:** Linear, Height, Superhuman, Bloomberg-lite pro tools, Raycast.
**Feel:** Fast, keyboard-first, for power users. Density without noise. (The most "productive-looking" card, still opinionated — not the generic default.)
**Type:** A tight technical sans — Inter Display *tightened*, or `free:` Geist / Space Grotesk. Mono for IDs and shortcuts.
**Color:** Near-black `#08090A` or crisp near-white, one restrained accent (indigo/violet used surgically, not as a gradient), subtle greys for hierarchy.
**Layout:** Compact rows (32-36px), hairline separators, command palette, keyboard-shortcut hints everywhere, tight but not cramped.
**Motion:** Fast (100-150ms), functional, no bounce. Instant-feeling.
**Signature move:** A ⌘K command palette and visible keyboard-shortcut chips as a first-class UI element.
**Imagery:** Minimal. Avatars, favicons, small thumbnails, crisp line icons. No hero photography — imagery is functional, never decorative.
**Voice:** Efficient, informative, no fluff; power-user register that respects the reader's time. Ex: "Everything, one keystroke away." · CTA "Open (⌘K)."

## 16. earthy-naturalist
**References:** Aesop, Kinfolk, outdoor/heritage brands (Filson, Patagonia editorial), botanical field guides.
**Feel:** Grounded, natural, tactile calm. Analog warmth.
**Type:** A humanist serif for headings (`free:` Fraunces or Lora), quiet humanist sans for body.
**Color:** Muted earth — moss `#5A6650`, clay `#B08968`, stone `#D6CFC4`, ink brown `#2B2620`. No pure black or white.
**Layout:** Generous, textured paper backgrounds, photography-led, botanical or topographic line details, calm hierarchy.
**Motion:** Slow, organic ease. Fades like film.
**Signature move:** Muted earth palette with a serif voice and a fine botanical/topographic line detail.
**Imagery:** Film-graded, warm/muted natural-light photography, full-bleed landscapes or textures. Accent with fine botanical/topographic line-art. Never over-saturate.
**Voice:** Calm, grounded, sensory, unhurried. Concrete and tactile, never rushed. Ex: "Made slowly, from what the land gives." · CTA "Explore."

---

## Picking notes

- **Selection is seed-by-default** (see SKILL.md). Roll a number 1-16, commit to it, don't reroll toward something safer. Fit-selection is the *override* for projects that genuinely demand a specific look.
- A card can be dialed down for a serious product (a restrained `swiss-international` or `utilitarian-dense`) without becoming generic. It still has a point of view.
- **Voice follows the card, not your reflexes.** Write the copy in the card's voice before reaching for the usual SaaS phrasing. The copy ban-list in SKILL.md is the tonal equivalent of the visual ban-list.
- You may borrow *one* element from a second card as an accent (e.g. `utilitarian-dense` with a `terminal-mono` log panel). Never split the whole UI 50/50.
- Card indices are stable (1-16 above) so a rotating counter always maps to the same card.
