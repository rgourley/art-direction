# Assets: fonts and imagery

The two ways a committed direction quietly rots back to the mean: the named typeface never loads (so you get system/Inter), and photo-led cards ship as empty color blocks. This file fixes both.

---

## 1. Load the typeface

Every deck card names a face. **Load it.** A card whose type falls back to system-ui or Inter has drifted to the default, that is the exact failure the ban-list exists to catch.

### Where each face lives
- **On Google Fonts** (most of the deck): Space Grotesk, Archivo/Archivo Black, DM Serif Display, Fraunces, Playfair Display, Source Serif 4, IBM Plex Sans/Mono, Poppins, Fredoka, Figtree, Nunito Sans, Mulish, Cormorant, Manrope, JetBrains Mono, Pixelify Sans, VT323, Orbitron, Chakra Petch, Rajdhani, Lora, Bricolage Grotesque, Geist, Arimo.
- **On Fontshare (free):** Clash Display.
- **Paid / self-host:** Berkeley Mono, Neue Haas Grotesk, Helvetica Now, Canela, Tiempos. Use these only if you have a license; otherwise use the card's `free:` fallback, never silently fall to Inter.

### Patterns

**Plain HTML / preview / Artifact-served-locally**, `<link>` in `<head>`:
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=Space+Grotesk:wght@400;500;600&display=swap" rel="stylesheet">
```
Then reference with a fallback chain that degrades to the card's `free:` face, not to system:
```css
--serif:'DM Serif Display', Georgia, serif;
--sans:'Space Grotesk', ui-sans-serif, system-ui, sans-serif;
```

**Next.js**, `next/font` (self-hosts, no layout shift, no external request):
```ts
import { DM_Serif_Display, Space_Grotesk } from 'next/font/google'
export const serif = DM_Serif_Display({ weight: '400', subsets: ['latin'], variable: '--serif' })
export const sans  = Space_Grotesk({ subsets: ['latin'], variable: '--sans' })
```

**Fontshare (Clash Display):**
```html
<link href="https://api.fontshare.com/v2/css?f[]=clash-display@400,500,600&display=swap" rel="stylesheet">
```

**⚠ Claude Artifacts:** the CSP blocks external font hosts too. In an Artifact, either embed the font as a base64 `@font-face` data-URI, or accept the `free:` fallback and pick a card whose character survives a system fallback (the signature move should carry it, as `risograph-print` did on grain + overprint, not on the exact face).

### Verify it loaded: don't assume
```js
document.fonts.check("16px 'DM Serif Display'")   // → true if actually loaded
```
If false, the face didn't load and you're looking at the fallback. Fix the link or self-host.

### Kill orphans: one word alone on a line is a tell

An orphaned last word makes any editorial or display card read like an unfinished blog draft. Fix it with CSS, not by rewriting the copy each time:

```css
/* Display headlines and short heads — prefer balanced line-lengths */
h1, h2, .display-xl, .display, .h2 { text-wrap: balance; }

/* Body prose — pull a stranded word back onto the previous line */
p, .lede, .caption, blockquote { text-wrap: pretty; }
```

`text-wrap: balance` and `text-wrap: pretty` are supported in modern Chrome, Safari, and Firefox; older browsers ignore them (harmless). For long paragraphs where `balance` is a perf hit, use `pretty` instead. If a specific two-word phrase must stay together (a name, a brand, "New York"), use `&nbsp;` between them.

Skipping this step is one of the loudest AI-look tells in serif-heavy cards (editorial-magazine, gallery-monochrome, art-deco, botanical-plate, broadsheet-newspaper, art-nouveau, mid-century-modernist, wabi-japanese-modernist).

---

## 2. Imagery: placeholders for prototype, real art for ship

Photo- and illustration-led cards (`gallery-monochrome`, `editorial-magazine`, `earthy-naturalist`, `maximalist-expressive`, fashion uses of `risograph-print`) look broken with empty color fields. Use placeholders **to show intent during prototype/preview**, then swap for real licensed assets before ship.

**The rule that matters:** never drop a raw stock photo in. Run every placeholder through the card's **imagery** treatment (§3). A bare Unsplash coat shot kills a riso or blueprint aesthetic as fast as an empty block does.

### Tier 1: keyless (default, zero config)
Use these when the user hasn't provided a key. The skill must work with nothing set up.
- **LoremFlickr**, keyworded: `https://loremflickr.com/{w}/{h}/{keyword}` e.g. `https://loremflickr.com/600/800/wool,coat`. Lock a stable image with `?lock=7`. CC images from Flickr; **quality and on-topic-ness vary**, a "coat" query can return a poster or a bystander. Best when you need topical-ish images and don't mind curating.
- **Picsum (Lorem Picsum)**, deterministic, non-topical: `https://picsum.photos/seed/{seed}/{w}/{h}`, plus `?grayscale` and `&blur=2`. Cleaner photos, but you don't choose the subject. Best when subject doesn't matter (backgrounds, texture).
- **placehold.co**, labeled solid block: `https://placehold.co/600x800?text=LOOK+01`. Last resort / wireframe only.
- **Avatars:** `https://i.pravatar.cc/128?u=rob` (photos) or DiceBear `https://api.dicebear.com/9.x/{style}/svg?seed=rob` (generated, keyless).

### Tier 2: Unsplash with an API key (opt-in, better quality)
When the user supplies an **`UNSPLASH_ACCESS_KEY`**, prefer this: curated, high-res, genuinely on-topic images. This is the honest upgrade over keyless, offer it whenever image quality matters (fashion, gallery, editorial, marketing).

- Get a key: unsplash.com/developers → new app → Access Key (free, demo tier ~50 req/hr).
- **Search** (pick best match): `GET https://api.unsplash.com/search/photos?query=wool+coat&orientation=portrait&client_id=KEY` → use `results[i].urls.regular`.
- **Random** (quick fill): `GET https://api.unsplash.com/photos/random?query=knitwear&orientation=portrait&client_id=KEY` → `urls.regular`.
- Never put the key in a client bundle or a URL you commit. Server-side fetch, or `.env.local` / platform env var (`NEXT_PUBLIC_` only if you accept exposure and rate-limit risk).
- **Attribution is mandatory** (Unsplash API terms): credit the photographer with a link, e.g. `Photo by <name> on Unsplash`, and hotlink `urls.*` (don't rehost). For real product use also trigger the download endpoint (`links.download_location` + `client_id`) once per used photo, the license requires it.
- Still a placeholder tier for prototyping: the Unsplash license is free but has conditions (no selling unaltered copies, no standalone redistribution). For a shipping product, make a deliberate licensing decision, don't inherit prototype images by default.

### Dead: don't use
- **`source.unsplash.com`**, the old keyless endpoint was shut down in 2024. It 404s/redirects. Use Tier 1 keyless or Tier 2 with a key instead.

### ⚠ The CSP caveat (important)
- **Claude Artifacts and many CSP'd hosts block ALL external images.** LoremFlickr/Picsum URLs will not load there. In an Artifact, use inline SVG, a CSS-drawn treatment, or a base64 data-URI image.
- **Local dev / the preview browser:** external placeholders load fine (that's where to demo them).
- **Production:** never ship pointing at loremflickr/picsum, rate-limited, unlicensed, and unstable. Swap for real assets. Mark placeholders (`data-placeholder`) so they're easy to grep and replace.

---

## 3. Treatment recipes: make a placeholder read on-aesthetic

Apply the card's treatment so even stock reads as designed.

### Duotone (risograph-print, sci-fi-hud)
Grayscale the photo, then map shadows to one ink and highlights to another via blend modes:
```css
.duo{position:relative; overflow:hidden}
.duo img{display:block; width:100%; height:100%; object-fit:cover; filter:grayscale(1) contrast(1.05)}
.duo::before{content:""; position:absolute; inset:0; background:var(--blue); mix-blend-mode:lighten}  /* shadows */
.duo::after {content:""; position:absolute; inset:0; background:var(--pink); mix-blend-mode:darken}   /* highlights */
```
For riso, add a halftone screen + grain + a few px of misregistration on top. For sci-fi, use cyan/magenta and add scanlines.

### Grayscale + tint (technical-blueprint)
```css
.plate img{filter:grayscale(1) brightness(1.1) opacity(.55)}
.plate{background:var(--cyan)}           /* tint bleeds through */
/* wrap in a dimensioned crop: corner marks + a measurement label */
```

### Halftone dot screen (risograph, retro-computing, memphis)
```css
.halftone{position:absolute; inset:0; mix-blend-mode:screen; opacity:.35;
  background-image:radial-gradient(#fff 30%, transparent 32%); background-size:7px 7px}
```

### Grain overlay (risograph, earthy, editorial)
```css
.grain::after{content:""; position:absolute; inset:0; pointer-events:none; mix-blend-mode:multiply; opacity:.5;
  background-image:url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='140' height='140'%3E%3Cfilter id='n'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.8' numOctaves='2'/%3E%3CfeColorMatrix type='saturate' values='0'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23n)' opacity='.35'/%3E%3C/svg%3E")}
```

### Warm film grade (earthy-naturalist, editorial)
```css
.film img{filter:saturate(.85) sepia(.12) contrast(1.03) brightness(1.02)}
```

### Full-bleed restraint (gallery-monochrome)
No filter or a light desaturate. The move is scale and space: one image, huge, wide margins, tiny caption. `filter:grayscale(.2)`.

### Dither / CRT (retro-computing, terminal-mono)
Posterize to few colors; overlay a 1px scanline `repeating-linear-gradient(#0000 0 2px, #0003 2px 3px)`; for 1-bit, a Bayer-dither PNG mask.

### Cutout / masked (memphis, neo-brutalist)
Mask the photo into a shape (`clip-path` circle/blob) on a flat color block; thick outline; no soft shadow.

---

## 4. Checklist for this file's concerns
- [ ] The card's named face is actually loaded (`document.fonts.check` returns true), not silently system/Inter.
- [ ] Photo/illustration-led card: imagery is present, not empty blocks.
- [ ] Every placeholder ran through the card's treatment (§3), no raw stock.
- [ ] Placeholders are keyless (LoremFlickr/Picsum), marked `data-placeholder`, and not `source.unsplash.com`.
- [ ] Target is an Artifact/CSP host → images are inline/CSS, not external URLs.
- [ ] Nothing ships to production pointing at a placeholder host.
