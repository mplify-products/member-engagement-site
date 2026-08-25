# Member Engagement — Style Notes

A running log of **this deck's** look-and-feel decisions and any deliberate deviations from the default Mplify style. Keep it short: record choices and their rationale, not a copy of the global guide.

## Source of truth

- **Default look & feel:** `mplify-context/html-presentation-design/mplify_html_presentation_design_and_brand_guide.md` — colours, typography, and slide patterns. Unless a decision below says otherwise, this deck follows that guide.
- **Reusable new patterns** (a new component or layout other decks could use) → promote into the global guide's §3 per workflow Phase 8; don't let them live only here.
- **This file** is only for choices specific to the Member Engagement deck.

## Current baseline

Follows the default brand guide, with the deviations recorded in the decisions log below (to date: enlarged fonts, a second pass on the small label tier, and scale-to-fit rendering for large screens). Families and tokens are unchanged:

- Brand tokens only (`--navy`, `--blue`, `--orange`, `--dkblue`, `--purple`, `--gray`, `--charcoal`, `--light`, `--white`); no hardcoded colours.
- Fonts: **Sansation** (headings) + **DM Sans** (body).
- Standard components: cover, definition, card grids, stacked layers, flow, next-step. Orange kept to ~10–15% per slide.

## Style anchors — quick map for edits

Which style controls what in this deck (change a `:root` token to recolour globally; use a component class or inline style for one spot):

| Element | Class / control |
|---|---|
| Cover title / subtitle | `.title-main` (Sansation 68px) / `.title-sub` (20px) |
| Slide heading | `.slide-title` (Sansation 38px); orange word = inner `<span>` |
| Section tag / intro line | `.slide-eyebrow` / `.slide-lead` |
| Cards | `.card-title`, `.card-text`; accents `.num-card-top-orange/-blue`, `.card-orange-left`, `.card-blue-left` |
| Committees rows | `.layer-name` / `.layer-desc` |
| Flow steps | `.flow-step` (`.flow-badge`, `.flow-number`) |
| Closing call-to-action | `.next-box` (`.pilot-pill`) |
| Sidebar | `#sidebar`, `.chapter-item` |

## Decisions log

Newest first. When we change the look and feel, add a row here.

| Date | Change | Where (slide / component) | Rationale |
|---|---|---|---|
| 2026-08-24 | **Removed Discussions & Contributions and Voting slides** from the Influence group (deck now 9 slides). Sidebar and slide IDs renumbered so nav stays 1:1 with slide order; counter is computed from `slides.length` so it updated automatically. | Influence group (sidebar + slides) | Requested removal; narrative sections under Influence are left in place. |
| 2026-08-24 | **Card 2 & 3 miniatures 15% narrower and centered** (`max-height` 150→127px, `max-width` 100%→85%, `margin` set to `10px auto 0`). Card 1's miniature left unchanged. | Slide 3 (Member Portal cards) | Requested visual refinement — smaller, centered thumbnails read cleaner alongside card 1's larger one. |
| 2026-08-23 | **Slide 2 card body text +30%** (`#slide-2 .card-text` 15.5→20px), scoped to that slide only. | Slide 2 (Track/Influence/Drive cards) | Requested emphasis on the three engagement cards. |
| 2026-08-23 | **Restructured deck to Track / Influence / Drive** (12 slides). Sidebar groups are now Framing / Track / Influence / Drive. Two new patterns: a **cover side box** (navy callout card next to the title — a deliberate deviation from the §3.1 single-panel title slide, holding the "Mplify Model / AI-native & fast" statement), and a **"To develop" placeholder slide** (centered dashed box + `pill-draft` badge) for sub-topics without source content yet. | Cover, placeholder slides, sidebar groups | Aligns the deck to the narrative's Track/Influence/Drive structure; placeholders mark gaps without inventing content. |
| 2026-08-23 | **Enlarged the small label tier only** (~+1.5px): eyebrows 12.5→14, flow badges 11.5→13, status pills 10.5→12, mini-labels 11→12.5, title-meta 13→14.5 (strong →16), card callouts 13.5→15, definition term 14.5→16, sidebar group 10→11.5 and items 12.5→14. Body copy and headings left unchanged. | Label / badge / sidebar components | The micro-labels still read small on screen after the deck-wide bump; the mid and large text was already fine. |
| 2026-08-23 | **Scale-to-fit for large screens** — wrapped the deck in a fixed 1280×720 canvas (`#deck`) scaled as one unit via JS (`--deck-scale = min(vw/1280, vh/720)`), so it fills any viewport (1.5× on a 1920×1080 screen) with every proportion and font size intact. | Whole deck (layout wrapper + JS) | Presentation shown over Zoom on a 1920×1080 screen; the fixed-pixel layout otherwise stays 1280×720-sized and looks small on a larger display. |
| 2026-08-23 | **Increased font sizes deck-wide** for on-screen legibility. Body text +~2px (card/layer text 13.5→15.5, lead 15→17.5, card titles 17→19); headings up (slide title 34→38, cover title 64→68, cover subtitle 17→20); definition text 21→24; supporting labels/badges up proportionally. `.card` vertical padding trimmed 26→20px so slide 3 still fits the 1280×720 stage. | Whole deck (CSS component sizes) | Default sizes were set for close reading; hard to read projected to a room. |
| 2026-08-23 | Baseline established — deck follows the default Mplify brand guide, no deviations. | Whole deck | Starting point for future look-and-feel changes. |
