# Art Direction Deck

Thirty-two committed directions for product UI. **None of them is "clean modern SaaS."** That absence is deliberate: the default AI look is the mean of the training data, so it is not on the menu. Every card here is a strong, coherent point of view that a real product or design tradition already proved.

Each card gives: **references** (real, so the model already knows the decisions), **feel**, **type**, **color**, **layout grammar**, **motion**, a **signature move** (the one thing that makes it unmistakable), **imagery** (how to treat photos/illustrations), and **voice** (how the copy should sound, the words get art-directed too). Build every component *and every sentence* to the card you pick. Do not blend cards.

**Load the typeface.** Every card names a face. A card whose type silently falls back to system/Inter has already drifted to the mean, that is a failure, not a shortcut. Most families here are on Google Fonts; Clash Display is on Fontshare; paid faces (Berkeley Mono, Neue Haas, Canela, Tiempos) self-host or use the card's `free:` fallback. Loading patterns: `references/assets.md`.

**Feed the imagery.** Photo- and illustration-led cards (fashion, gallery, editorial, earthy, maximalist) die with empty color blocks. During prototype/preview, use placeholders run through the card's **imagery** treatment, then swap for real licensed art before ship. Sources (keyless + optional Unsplash key), the CSP caveat, and treatment recipes: `references/assets.md`.

**Match the voice.** The copy is part of the art direction. Generic SaaS marketing-speak is the tonal equivalent of the purple gradient, see the copy ban-list in `SKILL.md`. Write to the card's **voice**, and for any long-form prose also apply the `writing-natural` skill.

Type notes list a primary (often paid/system) and a `free:` fallback on Google Fonts so the direction survives with no licensing.

---

## 1. swiss-international
**References:** Josef Müller-Brockmann, Massimo Vignelli, Unimark, the 1970s Swiss poster tradition.
**Feel:** Rigorous, silent, confident. The grid is the design.
**Type:** Neue Haas Grotesk / Helvetica Now. `free:` Arimo or system Helvetica. Tight tracking, huge scale contrast (a 14px body next to a 96px headline).
**Color:** Black on white, one saturated accent, classic Swiss red `#E30613`. No third color.
**Layout:** Strict 12-column grid, visible baseline grid, flush-left / ragged-right, generous columns, content snapped hard to the grid.
**Motion:** Almost none. Instant state changes. Maybe a 120ms fade.
**Signature move:** Oversized flush-left headline breaking across the grid, tiny caption set in the same family two steps down.
**Imagery:** Sparing. High-contrast B/W photography, or a single-color duotone in the accent red, snapped to the grid with 0px radius. Often type-only, let the grid carry it.
**Voice:** Precise, declarative, unadorned. No adjective that hasn't earned its place. Nouns and verbs. Ex: "Order. Structure. Clarity." · CTA "Begin."

## 2. neo-brutalist
**References:** Gumroad (2022 rebrand), Figma's brand, Poolside, early Vercel marketing.
**Feel:** Loud, flat, confident-ugly. Reads as "made by people, not a template."
**Type:** A chunky grotesque, Archivo Black / Space Grotesk for display, plain sans for body.
**Color:** Bright flat fills (no gradients) on off-white or bright yellow/blue. Pure black borders and text.
**Layout:** Thick 2-3px black borders on everything, hard offset drop shadows (`4px 4px 0 #000`, no blur), 0px radius, elements slightly overlapping.
**Motion:** Snappy. Buttons "press" by translating into their shadow.
**Signature move:** The hard black offset shadow on cards and buttons. Nothing else does that.
**Imagery:** Hard-cropped photos or flat-color cutout illustrations, posterized or high-contrast, inside a thick black border. Sticker energy, imagery can sit at a slight rotation.
**Voice:** Blunt, punchy, a little brash. Short sentences, talks like a person not a brand, mild swagger. Ex: "We built the thing you actually wanted." · CTA "Get it."

## 3. raw-brutalist
**References:** Bloomberg.com's utilitarian corners, Craigslist, Berkshire Hathaway, "brutalist websites" archive, Are.na's density.
**Feel:** Unstyled-on-purpose. Information over decoration. Anti-polish.
**Type:** System font stack or Times. Underlined links. No custom webfont at all.
**Color:** Default-blue links `#0000EE`, black text, white background. Borders are 1px `#000`.
**Layout:** Dense, hairline `<table>`-style rules, minimal whitespace, left-aligned everything, no cards.
**Motion:** None. This is the point.
**Signature move:** Real underlined blue hyperlinks and hairline dividers instead of cards and buttons.
**Imagery:** Untreated photos placed inline like a document image, small, no crop or filter. Often none at all, text is the interface.
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
**Type:** Monospace everywhere, Berkeley Mono / JetBrains Mono / IBM Plex Mono (`free:` JetBrains Mono).
**Color:** Near-black `#0C0C0C`, foreground `#E4E4E4`, one phosphor accent (green `#00FF9C` or amber `#FFB000`). ANSI-style secondary colors.
**Layout:** Fixed-width columns, ASCII/box-drawing separators, blinking block cursor, `$` prompts, keyboard hints in `[brackets]`.
**Motion:** Typewriter reveal, cursor blink. No easing curves, things appear.
**Signature move:** A prompt line with a blinking cursor and box-drawing characters framing panels.
**Imagery:** Avoid photos. Use ASCII art, mono diagrams, or 1-bit dithered images. If a photo is unavoidable, posterize to 2 colors and dither.
**Voice:** Terse, technical, lowercase, command-like. Verbs first, no fluff. Ex: "ship faster. break less. sleep more." · CTA "$ npm i".

## 6. tactile-hardware
**References:** Teenage Engineering (OP-1, TP-7), Braun / Dieter Rams, Nothing OS, Panic (Playdate, Nova).
**Feel:** A physical device rendered in software. Every control looks pressable.
**Type:** A precise technical grotesque, small caps labels, `free:` Space Grotesk or IBM Plex Sans, mono for numeric readouts.
**Color:** Light grey device body `#D9D9D6`, dark controls, one or two saturated "button" colors (orange, red). Restrained, product-industrial.
**Layout:** Panels that look like faceplates, real knobs/sliders/segmented displays, tight labeling, screws-and-seams detailing optional.
**Motion:** Mechanical, knobs rotate, toggles throw, LEDs light. Short and physical.
**Signature move:** A skeuomorphic control (a knob, a segmented LED readout, a labeled hardware button) doing real work.
**Imagery:** Product renders on a seamless grey sweep, studio-lit, centered, with a soft contact shadow. Objects, not lifestyle photos.
**Voice:** Precise, understated, spec-forward. Materials and numbers over adjectives. Ex: "Eight knobs. One job. No menus." · CTA "See the specs."

## 7. technical-blueprint
**References:** Engineering drawings, Dieter Rams schematics, Stripe's early technical diagrams, architectural CAD, IBM's design language.
**Feel:** Precise, measured, annotated. Everything is dimensioned.
**Type:** IBM Plex Sans + IBM Plex Mono. Small-caps labels, numeric callouts in mono.
**Color:** Blueprint, pale grid on `#0A2540` navy, or dark lines on graph-paper white. Cyan `#00A3FF` annotations.
**Layout:** Visible measurement grid, dimension lines with arrowheads, corner registration marks, annotation leaders pointing at elements.
**Motion:** Lines draw themselves (stroke-dashoffset), measurements count up.
**Signature move:** Dimension lines and annotation callouts labeling parts of the UI as if it were a spec sheet.
**Imagery:** Photos go grayscale + low-opacity + a cyan tint, placed inside a dimensioned crop with corner marks and a measurement label, a "plate/figure," never a raw photo.
**Voice:** Exact, quantified, engineering register. Claims come with numbers. No hype words. Ex: "Measured to the millisecond. Priced to the seat." · CTA "Read the spec."

## 8. memphis-postmodern
**References:** Memphis Group (Ettore Sottsass), 1980s postmodern graphics, Slack's early brand, MTV bumpers.
**Feel:** Playful, geometric, deliberately clashing. Fun and a little chaotic.
**Type:** A rounded or geometric display sans, `free:` Poppins or Fredoka for display, clean sans body.
**Color:** Multiple saturated primaries at once, teal, hot pink, yellow, cobalt, on off-white. Squiggles and dots.
**Layout:** Floating geometric shapes (circles, zigzags, triangles) behind content, off-grid placement, confetti energy.
**Motion:** Bouncy, springy, shapes drift and rotate.
**Signature move:** Scattered geometric confetti shapes (squiggle, triangle, dotted arc) as decoration.
**Imagery:** Flat cutout illustration over photos. If photos, mask them into circles/blobs on a color-blocked background. Bold outlines, no soft shadows.
**Voice:** Playful, exclamatory, irreverent. Wordplay welcome, energy high. Ex: "Work that doesn't feel like work!" · CTA "Jump in."

## 9. humanist-warm
**References:** Basecamp / 37signals, Notion (warmer), Duolingo's softness, Headspace, Ghost.
**Feel:** Friendly, calm, human. Approachable without being childish.
**Type:** A warm humanist sans, `free:` Figtree, Nunito Sans, or Mulish. Comfortable body size (16-17px).
**Color:** Warm neutrals (sand, clay, soft cream), a friendly single accent (terracotta, sage, muted coral). Low saturation.
**Layout:** Generous rounded cards (12-16px radius), soft not-harsh shadows, roomy line-height, occasional hand-drawn touch or spot illustration.
**Motion:** Gentle ease-out, soft scale on hover. Nothing sharp.
**Signature move:** Warm-neutral palette with a single earthy accent and a hand-drawn spot detail.
**Imagery:** Illustration-led, soft spot illustrations, hand-drawn line work. If photos, warm-grade them and use rounded corners with generous padding.
**Voice:** Warm, plainspoken, reassuring, second-person. Talks *to* you, not at you. Ex: "Let's make this the easy part of your day." · CTA "Get started."

## 10. gallery-monochrome
**References:** Fashion houses (COS, Aesop, Jil Sander sites), art gallery sites, Awwwards minimal winners.
**Feel:** Luxury restraint. Confidence through emptiness.
**Type:** A refined grotesque or a high-contrast serif, set large with wide letter-spacing, `free:` Cormorant (serif) or Manrope (sans), used sparingly.
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
**Type:** A characterful sans or a quirky serif, `free:` Space Grotesk or DM Serif Display.
**Color:** Two or three riso spot inks that overprint, fluorescent pink `#FF48B0`, blue `#0078BF`, yellow, with visible overlap multiply. Paper `#F3EFE0`.
**Layout:** Slight misregistration between color layers, grain/noise texture overlay, halftone dots, hand-placed elements.
**Motion:** Minimal. A slight jitter or grain shimmer at most.
**Signature move:** Overprinting two spot colors so the overlap makes a third, plus paper grain.
**Imagery:** Duotone every photo in two spot inks (grayscale base + a lighten/darken color pair), add a halftone dot screen, grain, and a few px of misregistration. Everything looks screen-printed. (Recipe in `assets.md`.)
**Voice:** Handmade, honest, a little zine-y; imperfection on purpose. Craft over polish. Ex: "Ink smudges. Registration slips. We keep it." · CTA "Shop the drop."

## 13. sci-fi-hud
**References:** Cyberpunk 2077 UI, Blade Runner interfaces, Hyperliquid's glow, sci-fi film HUDs, Destiny menus.
**Feel:** High-tech, glowing, angular. A cockpit from the future.
**Type:** A wide technical/geometric sans, often uppercase, `free:` Orbitron (sparingly), Chakra Petch, or Rajdhani; mono for data.
**Color:** Deep space `#05060A`, glowing cyan `#22D3EE` and magenta `#F0F`, thin luminous strokes. Glow via box-shadow.
**Layout:** Angular clipped corners (clip-path), thin glowing frames, corner brackets, scanlines, data-readout panels.
**Motion:** Flicker-in, scanline sweep, glowing pulse.
**Signature move:** Angular clipped-corner panels with a glowing 1px border and corner brackets.
**Imagery:** Dark, high-contrast photos in a cyan/magenta duotone with a scanline overlay, framed inside clipped-corner HUD panels with a faint glow.
**Voice:** Clipped, high-stakes, systems-online register. Uppercase accents, imperative. Ex: "ALL SYSTEMS ONLINE. LET'S MOVE." · CTA "ENGAGE."

## 14. maximalist-expressive
**References:** Stripe Sessions site, Awwwards site-of-the-day winners, Active Theory, Obys, Cuberto.
**Feel:** Layered, kinetic, ambitious. The web as spectacle.
**Type:** A distinctive display face pushed huge, mixed weights and sizes, `free:` Clash Display (via Fontshare), Bricolage Grotesque.
**Color:** Rich, layered, saturated. Gradients allowed here (unlike everywhere else) but as bold color fields, not the AI purple-blue wash.
**Layout:** Overlapping layers, huge scroll-driven type, sticky sections, depth and parallax, elements that break the grid on purpose.
**Motion:** The whole point, scroll-linked animation, magnetic cursors, staggered reveals, marquees.
**Signature move:** Scroll-driven kinetic typography, text that scales, splits, or moves as you scroll.
**Imagery:** Full-bleed, layered, scaled huge with type overlapping it. Vivid or duotone grade, often motion-driven (parallax, reveal). Photos are set pieces, not thumbnails.
**Voice:** Bold, kinetic, big claims, but earned, not hollow. Superlatives with substance behind them. Ex: "The web, turned all the way up." · CTA "Experience it."

## 15. utilitarian-dense
**References:** Linear, Height, Superhuman, Bloomberg-lite pro tools, Raycast.
**Feel:** Fast, keyboard-first, for power users. Density without noise. (The most "productive-looking" card, still opinionated, not the generic default.)
**Type:** A tight technical sans, Inter Display *tightened*, or `free:` Geist / Space Grotesk. Mono for IDs and shortcuts.
**Color:** Near-black `#08090A` or crisp near-white, one restrained accent (indigo/violet used surgically, not as a gradient), subtle greys for hierarchy.
**Layout:** Compact rows (32-36px), hairline separators, command palette, keyboard-shortcut hints everywhere, tight but not cramped.
**Motion:** Fast (100-150ms), functional, no bounce. Instant-feeling.
**Signature move:** A ⌘K command palette and visible keyboard-shortcut chips as a first-class UI element.
**Imagery:** Minimal. Avatars, favicons, small thumbnails, crisp line icons. No hero photography, imagery is functional, never decorative.
**Voice:** Efficient, informative, no fluff; power-user register that respects the reader's time. Ex: "Everything, one keystroke away." · CTA "Open (⌘K)."

## 16. earthy-naturalist
**References:** Aesop, Kinfolk, outdoor/heritage brands (Filson, Patagonia editorial), botanical field guides.
**Feel:** Grounded, natural, tactile calm. Analog warmth.
**Type:** A humanist serif for headings (`free:` Fraunces or Lora), quiet humanist sans for body.
**Color:** Muted earth, moss `#5A6650`, clay `#B08968`, stone `#D6CFC4`, ink brown `#2B2620`. No pure black or white.
**Layout:** Generous, textured paper backgrounds, photography-led, botanical or topographic line details, calm hierarchy.
**Motion:** Slow, organic ease. Fades like film.
**Signature move:** Muted earth palette with a serif voice and a fine botanical/topographic line detail.
**Imagery:** Film-graded, warm/muted natural-light photography, full-bleed landscapes or textures. Accent with fine botanical/topographic line-art. Never over-saturate.
**Voice:** Calm, grounded, sensory, unhurried. Concrete and tactile, never rushed. Ex: "Made slowly, from what the land gives." · CTA "Explore."

## 17. bauhaus-constructivist
**References:** Alexander Rodchenko, El Lissitzky, Bauhaus posters (Herbert Bayer, László Moholy-Nagy), Soviet agit-prop, De Stijl (Mondrian, Rietveld).
**Feel:** Revolutionary geometry. Type as construction, shapes as language, everything set at a purposeful angle.
**Type:** A geometric sans or heavy slab, Futura / Rockwell / DIN. `free:` Bebas Neue for display, Work Sans or DM Sans for body. Aggressive weight contrast, tight tracking, all-caps allowed.
**Color:** Red `#D0021B`, black, white. Occasionally cadmium yellow or ultramarine. Never more than three at once. Flat fills, no gradients ever.
**Layout:** Diagonal type, hard geometric shapes (circles, triangles, bars) as compositional weight, off-axis grids, elements running off the edge.
**Motion:** Constructivist snap. Elements slide in on the diagonal, no easing, no bounce.
**Signature move:** A diagonal composition with a giant red circle or bar behind stacked slab-sans headlines.
**Imagery:** High-contrast B/W photography with red-block overlays, or cut-out figures pasted across geometric fields. Photomontage. Rodchenko-style crops from below.
**Voice:** Manifesto register. Short imperative lines, all-caps allowed, urgency without hype. Ex: "BUILD. SHIP. REPEAT." · CTA "JOIN THE WORK."

## 18. art-deco
**References:** A.M. Cassandre posters, Erté, Chrysler Building signage, 1920s ocean-liner and travel posters, Paul Poiret fashion plates.
**Feel:** Streamlined luxury. Machine-age optimism, geometric elegance, gold on ink.
**Type:** A geometric display sans or a high-contrast serif with deco proportions. `free:` Poiret One for display, Cormorant Garamond SC or Playfair Display for headings. Small caps and wide tracking on secondary text.
**Color:** Ink `#0A0A0A`, cream `#F5EFE0`, warm gold `#C9A961` (or a real metallic gold gradient). Optional jewel accent (jade `#0F5940`, sapphire `#1B2E62`).
**Layout:** Symmetrical, stepped/tiered compositions, sunburst radials, chevron dividers, tall vertical proportions. Centered or mirrored, never off-kilter.
**Motion:** Slow, deliberate reveals, gold shimmer sweeps, elevator-doors symmetry.
**Signature move:** A stepped/tiered header with a sunburst radial or chevron rule in metallic gold.
**Imagery:** Cassandre-style stylized illustration over photo when possible, geometric silhouettes, ocean-liner scale. If photo, sepia-warm grade inside a stepped-arch frame.
**Voice:** Elevated, ceremonial, restrained flourish. Full sentences with cadence, no exclamation. Ex: "The considered pursuit of what lasts." · CTA "Reserve."

## 19. frutiger-aero
**References:** Windows Vista/7 wallpapers, iOS 4-6 skeuomorphism, mid-2000s Sony/Nokia UI, "Aqua" era Apple, GarageBand, corporate stock photography circa 2005-2013.
**Feel:** Optimistic mid-2000s consumer tech. Glossy, translucent, cloud-and-grass energy. Aggressively pre-recession.
**Type:** Segoe UI or SF Pro Rounded. `free:` Nunito, Rubik, or M PLUS Rounded 1c. Rounded, friendly, medium weight, comfortable body.
**Color:** Sky blue `#4FB2F5` gradients, aqua `#00E1FF`, glossy white specular highlights, meadow green accents. Soft radial glows and blue-tinted drop shadows on everything.
**Layout:** Rounded translucent glass panels over bright wallpaper backgrounds, reflective surfaces, floating orbs and bubbles, generous padding, buttons that look pressable.
**Motion:** Bouncy elastic springs, genie-effect transitions, gentle floating idle animations.
**Signature move:** Aqua-glass rounded panels with a bright specular highlight, floating over a blue-sky gradient with soft bokeh.
**Imagery:** Sky/nature stock (grass, water droplets, clouds, bubbles) as backgrounds. Product renders on white with a reflection floor. Nothing gritty, nothing textured. Bloom and lens flare permitted.
**Voice:** Bright, friendly, aspirational, mid-2000s tech optimism. Ex: "Everything you love, in the cloud." · CTA "Get started free."

## 20. mid-century-modernist
**References:** Paul Rand, Alvin Lustig, Saul Bass title sequences, Charley Harper, Alexander Girard, Herman Miller print ads, Push Pin Studios.
**Feel:** Optimistic postwar American modernism. Playful geometry, hand-cut shapes, custom lettering, human warmth inside a modern frame.
**Type:** A friendly geometric sans paired with a lively serif or a hand-drawn display, `free:` Fraunces (serif) with DM Sans (sans). Occasional custom cut-paper letterforms in illustration.
**Color:** Warm cream `#F1E9D2`, brick red `#C13B2E`, teal `#3A7D7C`, mustard `#D9A441`, ink `#2A2A2A`. All present together, all flat, all warm.
**Layout:** Off-center compositions, hand-cut geometric illustration (birds, sun, figures, plants) as anchor, generous negative space, playful asymmetry.
**Motion:** Charming and character-driven. A shape hops, a bird blinks, a sun spins slowly. No physics-heavy springs.
**Signature move:** A large cut-paper geometric illustration built from 3-5 flat shapes (a bird, a sun, a face), sitting off-center against generous cream.
**Imagery:** Flat cut-paper illustration in the palette, animals, figures, plants built from a handful of shapes. Never gradients, never soft. If photo, sits inside a cut-paper frame.
**Voice:** Warm, witty, considered, mid-century magazine copy. A little charmed with itself, never precious. Ex: "Good things, made honestly, for people who notice." · CTA "See our work."

## 21. cranbrook-deconstructed
**References:** Emigre magazine, David Carson (Ray Gun, Beach Culture), Cranbrook Academy of Art (Katherine McCoy), April Greiman, Neville Brody, early Wired print, Rudy VanderLans.
**Feel:** Post-Swiss revolt. Broken grids, collided type, deliberate difficulty. Reading is a design act.
**Type:** Multiple faces layered on purpose. A rough serif or Bodoni (`free:` Rozha One, Bodoni Moda) against a display sans (`free:` Anton, Bungee) and a mono. Extreme scale contrast, overlapping.
**Color:** Newsprint off-white base, black ink, one aggressive spot color (magenta, cyan, or acid green). Halftone dots and photocopy artifacts as texture.
**Layout:** Broken grid, overlapping type layers, text at angles, columns that collide, whitespace weaponized, spreads that refuse to align.
**Motion:** Jittery, offset, cursor-driven glitches, text that repositions on hover.
**Signature move:** Huge display type layered with a smaller type block set at a different angle, a photocopy-halftone photo behind both.
**Imagery:** Photocopy-degraded, high-contrast halftone, doubled or tripled with color-offset registration errors. Type overlaid on top. Never clean.
**Voice:** Argumentative, essayistic, self-aware, unafraid of a fragmented sentence. Punctuation as design. Ex: "Legibility. Optional." · CTA "Read on."

## 22. ukiyo-e-woodblock
**References:** Hokusai, Hiroshige, Utamaro, Sharaku, Edo-period Japanese woodblock prints, contemporary Japanese design that leans on the tradition.
**Feel:** Flat picture plane, ink outlines, calm palette. The stillness of Edo prints translated to screen.
**Type:** A humanist serif with faint brush quality for headlines, `free:` Shippori Mincho, Noto Serif JP, or Cormorant Garamond. Vertical text used sparingly where meaningful.
**Color:** Indigo `#1F3A5F`, aged cream `#EFE6D2`, vermilion `#C33C34`, moss `#6B7A44`, ink `#1A1A1A`. Never modern-bright.
**Layout:** Flat picture plane (no perspective depth), strong horizontal bands, off-center focal point, large single-color fields, red chop-mark seal in a corner.
**Motion:** Almost none. A slow ink-bleed reveal, a gentle wave, a wind through grass. Nothing modern.
**Signature move:** A flat woodblock-illustrated scene, ink-outlined focal figure, a large color field behind, a red chop-mark seal in the corner.
**Imagery:** Woodblock-style illustration, flat colors, black ink outlines, no shading, no perspective. If photo, posterize to 3-4 flat colors and add ink outlines.
**Voice:** Quiet, observational, sensory, one image per sentence. Ex: "A wave. A boat. A morning worth remembering." · CTA "See the collection."

## 23. zine-cutup
**References:** Punk zines (Sniffin' Glue, Maximum Rocknroll), Riot Grrrl zines, Raymond Pettibon, Xerox art, ransom-note typography, DIY 80s/90s counterculture, Winston Smith collage.
**Feel:** Xeroxed, hand-cut, unapologetically messy. Made at a copy shop at 2am.
**Type:** Mixed on purpose. Typewritten body (`free:` Special Elite / Courier Prime), ransom-note headlines cut from multiple faces at different sizes, handwritten scrawl allowed.
**Color:** Xerox black on newsprint white, one spot splash (highlighter yellow, red marker, blue ballpoint). Everything looks toner-degraded and re-copied.
**Layout:** Cut-and-paste with visible tape edges and torn strips, elements tilted at random, columns colliding, marker-drawn arrows and circles.
**Motion:** Jittery, hand-shot on VHS. Elements paper-flip or wobble, no smooth easing.
**Signature move:** A headline built from cut-out letters (ransom-note) taped over a photocopied photograph.
**Imagery:** Photocopied-then-re-photocopied photos, high-contrast Xerox grain, cut out and taped down with visible tape. Marker scribbles across them.
**Voice:** Confrontational, first-person, angry or gleeful, unfiltered. Zine editorial register. Ex: "We made this because nobody else would." · CTA "Grab issue #4."

## 24. wabi-japanese-modernist
**References:** MUJI, Kenya Hara, Naoto Fukasawa, Sori Yanagi, Nakagawa Mokkougei, contemporary Japanese craft photography, IDÉE Tokyo.
**Feel:** Wabi-sabi restraint meets modernist discipline. Emptiness as luxury, natural materials, silence as design.
**Type:** A neutral sans set light and quiet, `free:` Manrope Light or Inter tightened, paired with a Mincho serif for headings (`free:` Shippori Mincho, Noto Serif JP).
**Color:** Unbleached paper `#F0EBE1`, soft charcoal `#3A3A3A`, one earthen accent (kinari beige `#D8CDB8`, hemp green `#8A9271`, aged terracotta `#B26F5C`). No pure white or black.
**Layout:** Enormous negative space, one object per screen, tiny labels, everything considered, off-center placement following ma (the interval between things).
**Motion:** Nearly still. A whisper of a fade, a slow product rotation.
**Signature move:** A single centered object photograph on unbleached paper with a tiny label set to the side in both Latin and Japanese-friendly typography.
**Imagery:** Single-object studio photography on unbleached paper, natural directional light, unpolished materials (cedar, linen, hemp, unglazed ceramic). Restrained, always breathable.
**Voice:** Quiet, precise, sensory, present-tense, honest about material. Ex: "Cedar. Sanded once. Signed on the underside." · CTA "See the piece."

## 25. comic-pop
**References:** Roy Lichtenstein, Andy Warhol prints, Silver Age comic panels (Kirby, Ditko), Ben-day dot printing, 1960s pop-art posters.
**Feel:** Comic panel translated to screen. Bold ink outlines, primary color fields, halftone dot fields, speech-bubble energy.
**Type:** Bold comic-book sans and ink-outlined display type. `free:` Bangers or Bungee for shouty display, Anton for headlines, plain sans for body. Comic Neue only inside dialog callouts.
**Color:** Primary red `#E1352C`, primary yellow `#FFD400`, primary blue `#1E5AA8`, black ink, white paper. Ben-day dot fields as texture.
**Layout:** Panel grid with hard black gutters, speech bubbles and thought clouds as callouts, radial "POW"/"BAM" starbursts for emphasis, action-line convergence.
**Motion:** Snap-to-frame reveal, panels flash in one by one, starburst pops on click.
**Signature move:** A Ben-day dot field behind an ink-outlined headline, with a radial starburst callout wrapping the CTA.
**Imagery:** Flat comic illustration with hard black ink outlines and primary-color fills, halftone shading. If photo, posterize to 3 flat tones and screen with dots.
**Voice:** Punchy, exclamatory, comic-panel dialog. Onomatopoeia allowed. Ex: "WHAM! Every feature you asked for." · CTA "POW!"

## 26. vaporwave-synthwave
**References:** Miami Vice title cards, Outrun / Kavinsky, Stranger Things titles, Retrowave album art, Blade Runner but pink, VHS tracking bars, Poolsuite FM.
**Feel:** 80s retro-future. Neon perspective grids receding to a chrome sun on a horizon that never ends.
**Type:** Chrome-outlined or geometric sans set uppercase with extreme letter-spacing, `free:` Monoton, Audiowide, Righteous. Occasional katakana as decoration.
**Color:** Hot pink `#FF3D9A`, cyan `#00E1FF`, deep purple `#2A0F5F`, chrome silver gradient, sunset orange `#FF6B35`. High saturation, glow via drop-shadow.
**Layout:** Perspective grid to a horizon vanishing point, chrome-outlined type at scale, palm-tree silhouettes, VHS tracking lines and RGB chromatic-aberration bars.
**Motion:** Grid scrolls toward horizon, chrome shimmer sweeps, VHS glitch stutter, slow zoom in.
**Signature move:** A chrome-outlined uppercase headline over a pink-cyan perspective grid with a setting sun rising through it.
**Imagery:** Palm trees, chrome busts, marble statues, retro sports cars, sunset horizons, all with pink/cyan gradient overlays and VHS-scanline treatment. Katakana labels optional.
**Voice:** Nostalgic-futurist, all-caps flair, drama without irony. Ex: "TONIGHT WE RIDE." · CTA "ENTER."

## 27. manga-anime
**References:** Katsuhiro Otomo (Akira), Naoki Urasawa, shonen manga (Dragon Ball, One Piece), screentone patterns, speed-line panels, contemporary anime title cards.
**Feel:** Ink and screentone. Speed lines, dramatic angles, panel bleeds, black weight everywhere.
**Type:** A high-contrast display sans for exclamation, mixed with brush-drawn accents. `free:` Anton or Bebas Neue for shouty display, Shippori Mincho or Noto Serif JP for Japanese-friendly headings. Katakana or hiragana decoration allowed.
**Color:** Ink `#0A0A0A`, paper `#EFEBE0`, one blood-splash color (arterial red `#C1272D` or shonen orange `#FF7B00`). Screentone dot patterns for shading.
**Layout:** Angular panel gutters (not orthogonal), dramatic bleed panels, speed-line convergence, tilted camera angles, focus lines converging on the CTA.
**Motion:** Snap zoom, speed-line sweeps, ink-splash reveal.
**Signature move:** Radiating speed lines converging on the headline, screentone dot field shading a bleed panel behind it.
**Imagery:** Ink illustration with screentone shading and heavy black spot, dramatic low angles, panel bleeds. If photo, convert to high-contrast ink with dot-screen midtones and add speed lines.
**Voice:** Dramatic, terse, high-stakes. Katakana onomatopoeia allowed. Ex: "The next move decides everything." · CTA "Begin the fight."

## 28. broadsheet-newspaper
**References:** The New York Times print edition, The Financial Times (salmon paper), Le Monde, The Wall Street Journal, broadsheet front pages, wire-service layout.
**Feel:** Serious news typography. Dense columns of information, hierarchy through type not decoration.
**Type:** A classic newspaper serif for headlines and body, `free:` Old Standard TT, PT Serif, or Source Serif Pro. Small caps for section labels, oldstyle numerals for tables.
**Color:** Newsprint `#F4EFE4` (or FT salmon `#F5E5D0` if editorial-financial), ink `#161514`, one masthead red for section flags. Grey hairline rules.
**Layout:** Dense 5-6 column grid, hairline column rules, hanging-indent bylines, ALL-CAPS section flags, drop initials, kicker + headline + deck stack, jump-continues.
**Motion:** None, or a slow scroll-linked column reveal. This is print imitation, motion isn't the point.
**Signature move:** A five-column news grid with a masthead-red section flag, drop cap, and a full ALL-CAPS deck under the headline.
**Imagery:** Small halftone-treated news photos with a byline caption in tiny serif italic. Info-graphic charts in ink and one accent color, never dashboards. Photo-forward but tightly captioned.
**Voice:** Newsroom register. Lede, nut graf, precise attribution. No first-person. Ex: "The rate cut, and what it means for renters." · CTA "Read the story."

## 29. botanical-plate
**References:** Ernst Haeckel's Kunstformen der Natur, Maria Sibylla Merian, Kew and RHS botanical field guides, 19th-century natural-history plates, Audubon's Birds of America.
**Feel:** Scientific illustration plate. Ink line-art of specimens on aged cream, dense annotation, encyclopedic calm.
**Type:** A humanist serif for headings (`free:` Cormorant Garamond, Lora), italic Latin binomials, a delicate copperplate script for a single captioned flourish (`free:` Great Vibes, used sparingly).
**Color:** Aged paper `#EDE4D0`, ink `#2A1F1A`, one botanical accent (specimen green `#4A6B3A`, aged rose `#B87368`, ochre `#B08F3E`). Muted and aged, never saturated.
**Layout:** Specimen-centered composition, hand-drawn leader-line labels pointing to parts, italic binomial captions, plate number in the corner, decorative border rules.
**Motion:** Fades like turning an old page. A specimen rotates slowly. Nothing digital-feeling.
**Signature move:** A centered ink line-drawing specimen with plate number, Latin binomial caption, and leader-line labels annotating each part.
**Imagery:** Ink line-drawing of specimens (plants, animals, minerals) with fine crosshatching, watercolor wash allowed. If photo, convert to ink line-art or set inside a plate frame with a binomial caption.
**Voice:** Naturalist's field-note register. Latin binomials, precise observation, present-tense. Ex: "Rosa gallica. Blooms once, in June. Fragrant." · CTA "Add to plate."

## 30. crypto-defi
**References:** Uniswap (unicorn era), Rainbow wallet, Zora, Farcaster/Warpcast, Blur, Friend.tech, memecoin project sites, on-chain "gm" culture.
**Feel:** Playful, chaotic, on-chain native. Gradient stickers, animated mascots, meme-fluent, unserious on purpose.
**Type:** A rounded playful sans or chunky display, `free:` Grandstander, Fredoka, Space Grotesk Bold. Mono for wallet addresses and token amounts.
**Color:** Candy pastels on off-white (mint `#7DF9FF`, bubblegum `#FF88C2`, lavender `#B69FFC`, sunny yellow `#FFEB6B`), or on deep dark `#0B0817`. Gradients allowed here as bold candy fields, never lavender wash.
**Layout:** Chunky rounded cards (20-28px radius), floating mascot illustration, animated stickers, ticker tapes scrolling, wallet-connect button prominently placed, big number counters.
**Motion:** Bouncy springs, mascot idle wiggle, ticker-tape scroll, gradient shimmer on hover, confetti on success.
**Signature move:** A big rounded gradient card with a floating mascot character and a wallet-connect button labeled "gm."
**Imagery:** Mascot/character illustration (chunky, rounded, animated), gradient stickers, meme-style cutouts. No stock photography. Pixel-art PFP avatars optional.
**Voice:** Lowercase, meme-fluent, gently unserious. On-chain slang OK. Ex: "gm. wanna trade a token nobody's heard of?" · CTA "connect wallet."

## 31. art-nouveau
**References:** Alphonse Mucha posters, Gustav Klimt, Aubrey Beardsley, Hector Guimard (Paris Métro entrances), Tiffany stained glass, La Belle Époque posters.
**Feel:** Organic curves, floral tendrils, flowing hair. Nature and femininity rendered as ornament. The exact opposite of Art Deco's geometry.
**Type:** A curvilinear or flourished display face, `free:` Berkshire Swash, Cinzel Decorative, or Cormorant Garamond used with ornamental capitals. Open counters and small caps for secondary.
**Color:** Antique cream `#F1E8D0`, sage green `#8AA07E`, dusty rose `#D0A5A1`, aged gold `#B08D4C`, indigo `#293E5B`. Muted jewel tones, never bright.
**Layout:** Sinuous curved borders, arched frame headers, flowing floral tendrils weaving through the composition, symmetrical vertical proportions.
**Motion:** Slow, undulating tendril reveal, gentle sway, watercolor bloom fade-ins.
**Signature move:** An arched header framed by hand-drawn floral tendrils, with a Mucha-style illustrated figure anchoring one side.
**Imagery:** Mucha-style illustrated figures with flowing hair and floral surrounds, stained-glass panels, Klimt gold-leaf patterning. If photo, sepia-warm and inside an ornamental curved frame.
**Voice:** Romantic, sensory, lyrical. Ex: "A flourish, in every quiet corner." · CTA "Enter the garden."

## 32. pixel-8bit
**References:** NES/SNES sprite art (Zelda, Chrono Trigger, Metroid), Game Boy palettes (DMG green), Pico-8 fantasy console, indie pixel games (Celeste, Hyper Light Drifter), EGA/CGA 16-color.
**Feel:** 8/16-bit sprite art rendered pixel-perfect. Games from before textures, when everything was two colors and a squint.
**Type:** True bitmap pixel fonts, `free:` Pixelify Sans, VT323, Silkscreen, or Press Start 2P for accents. Body still uses a pixel body face, no anti-aliasing anywhere.
**Color:** A committed limited palette (Game Boy DMG `#0F380F #306230 #8BAC0F #9BBC0F`, or an NES palette, or a Pico-8 palette). Never more than 8 colors.
**Layout:** Everything aligned to pixel units (multiples of 4 or 8), sprite tiles as icons, pixel-perfect dialog boxes with hard borders, status bars along the top.
**Motion:** Frame-by-frame sprite animation, no easing, no interpolation. Idle bob at 2fps.
**Signature move:** A sprite character or item tile with a pixel-perfect dialog box below it, all rendered `image-rendering: pixelated`.
**Imagery:** Original pixel-art sprites, tilemaps, or bitmap portraits in the palette. If photo, dither to the palette at 2-4px pixel size (Bayer or Floyd-Steinberg).
**Voice:** Game-dialog register. Terse, in-world, ALL-CAPS status lines. Ex: "YOU FOUND A SECRET." · CTA "PRESS START."

---

## Picking notes

- **Selection is seed-by-default** (see SKILL.md). Roll a number 1-32, commit to it, don't reroll toward something safer. Fit-selection is the *override* for projects that genuinely demand a specific look.
- A card can be dialed down for a serious product (a restrained `swiss-international` or `utilitarian-dense`) without becoming generic. It still has a point of view.
- **Voice follows the card, not your reflexes.** Write the copy in the card's voice before reaching for the usual SaaS phrasing. The copy ban-list in SKILL.md is the tonal equivalent of the visual ban-list.
- You may borrow *one* element from a second card as an accent (e.g. `utilitarian-dense` with a `terminal-mono` log panel). Never split the whole UI 50/50.
- Card indices are stable (1-32 above) so a rotating counter always maps to the same card.
