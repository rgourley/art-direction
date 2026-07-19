# Copy: anti-AI protections for UI text

The copy is art direction. Generic AI voice is the tonal equivalent of the purple gradient: it makes every product sound identical no matter what the pixels do. This file is the copy counterpart to `deck.md` and the enforcement side of the skill.

Two layers of protection:
1. **The tells** below, plus per-surface fixes. Read before writing microcopy.
2. **`bin/check-copy.sh`**, a linter that scans your product's copy and flags these tells with file:line. Run it before commit; wire it into a pre-commit hook or CI.

For long-form prose (blog, essays, launch posts) also use the `writing-natural` skill. The master banned-word list lives in `~/vaults/personal/anti-ai-writing-guide.md`, this file does not duplicate it, it applies it to UI surfaces.

## The tells

**Hype verbs with no content:** supercharge, unlock, elevate, empower, revolutionize, transform, unleash, harness the power of, take it to the next level.

**Empty intensifiers:** seamlessly, effortlessly, blazing-fast, lightning-fast, next-level, powerful yet simple, beautifully simple, cutting-edge, state-of-the-art, world-class, best-in-class.

**Template headlines:** "The future of X", "X, reimagined", "Meet X, the Y for Z", "Everything you need to…", "Say goodbye to X", "X made easy", "In today's fast-paced world".

**Fake proof:** "Join thousands of teams who…", "Loved by developers everywhere", "Trusted by industry leaders", unless it is true and specific (a real number, a real named customer).

**Structural tics (the LLM rhythm):**
- Rule of three everywhere ("faster, smarter, simpler").
- "It's not just X, it's Y."
- "Whether you're X or Y, …"
- "From X to Y, we've got you covered."
- Every sentence the same length. Monotone.

**Transitions and hedges:** moreover, furthermore, that said, in conclusion, ultimately, it's worth noting, arguably, when it comes to.

**Filler vocabulary:** leverage, utilize (use "use"), robust, streamline, holistic, synergy, actionable insights, user-friendly, hassle-free, navigate the landscape, tapestry, testament to.

**Format tells:** emoji as bullets, Title Case On Everything, exclamation-driven hype, and **em dashes** (a hard ban here, LLMs overuse them; use commas, colons, periods, or parentheses).

## Per-surface protections

| Surface | AI default | The fix |
|---|---|---|
| **Headline** | "Supercharge your workflow" | Say what it does, in the card's voice. "Measured to the millisecond." (blueprint) |
| **Subhead** | "The all-in-one platform to streamline your team's productivity" | One concrete sentence. Drop "all-in-one", "streamline", "productivity". |
| **CTA / button** | "Get Started Today", "Learn More" | A verb for the actual next step. "Start measuring", "Shop the drop", "$ npm i". |
| **Empty state** | "No items yet. Get started by creating your first item!" | Plain, on-voice, one action. "Nothing here. Add a service to begin." |
| **Error** | "Oops! Something went wrong 😕" | What failed + what to do. "Couldn't save. Check your connection and retry." |
| **Loading** | "Please wait while we work our magic…" | State the task. "Fetching latency…" |
| **Tooltip / label** | "Click here to enable" | The noun/verb only. "Enable alerts". |
| **Footer / legal** | "© 2026 Company. All rights reserved. Made with ❤️" | Sober, specific, on-voice. Skip the heart. |

## Same message, different voice

The protection is not "write bland." It is "write to the card." One message, six cards:

- **swiss-international:** "Track every request. Set a budget. Ship."
- **terminal-mono:** "measure p99. spend the budget wisely. `$ gauge init`"
- **technical-blueprint:** "p50/p95/p99 per route, measured at source. Budgets deducted in real time."
- **neo-brutalist:** "We watch your latency so you don't get paged at 3am."
- **risograph-print:** "We count every millisecond by hand. Well, almost."
- **gallery-monochrome:** "Latency. Measured."

None of them says "supercharge your observability."

## Running the linter

```sh
# scan your product's copy (components, pages, content)
bin/check-copy.sh src/
bin/check-copy.sh app/ content/

# HARD hits (marketing hype, em dashes) → exit 1, gate the commit
# SOFT hits (leverage, robust, moreover…) → warnings, review them
```

Point it at product copy, not at this guide, the guide naturally contains every banned phrase as an example, so it will light up. The em-dash rule is Rob's hard rule; teams without it can drop `—` from the HARD list in the script.

## Verify before shipping copy
- [ ] Copy is in the chosen card's **voice** (deck.md), not generic SaaS.
- [ ] `check-copy.sh` shows zero HARD hits on the product copy.
- [ ] SOFT hits reviewed and kept only where genuinely correct.
- [ ] Headlines, CTAs, empty states, and errors all pass, not just the hero.
- [ ] Sentence length varies. Nothing is grouped in threes by reflex.
- [ ] Long-form prose also ran through `writing-natural`.
