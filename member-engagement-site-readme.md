# Member Engagement

Context folder for the **Member Engagement** HTML presentation. Follows the process in `mplify-context/html-presentation-design/mplify_html_presentation_workflow.md` and reuses the `agentic-lso-site` deck as its structural basis.

## Slug

`member-engagement`

## Storage

| Folder | Purpose |
|---|---|
| `mplify-context/member-engagement` | **Context folder** — source material, notes, messaging, and reference files that feed the deck. |
| `Repos/member-engagement-site` | **Site folder** (this folder) — the deliverable HTML deck and anything version-controlled for delivery. |

## Brief and scope

- **Title.** Member Engagement — How members drive the work of Mplify.
- **Requester / owner.** Daniel.
- **Author.** Built in Cowork from `member-engagement-narrative.md`, using `agentic-lso-site/index.html` as the structural basis.
- **New deck or revision.** New deck.
- **Distribution / sensitivity.** Members only (draft for discussion).
- **Audience.** Mplify members and potential participants in projects; mixed technical level.
- **Purpose.** Explain how member work is organized and advanced across the alliance, and the new approaches to collaboration, execution, tooling, and roadmap development — to encourage members to engage and take part.
- **Key takeaway.** Members drive everything Mplify produces; a clearer, faster way of working is now in place — join a committee, contribute in projects and monthly sprints, and use the Member Portal.
- **Delivery channel.** URL on ForgeJo and/or a link in the Mplify Member Portal.
- **Length.** 9 slides.
- **Status.** Draft for discussion.
- **Project-specific style guide.** Default Mplify brand guide, with this deck's look-and-feel decisions and any deviations logged in `member-engagement-site-style.md`.

## Slide arc

Structured on the narrative's **Track / Influence / Drive** framing.

_Framing_
1. Member engagement — cover; "How members engage in the work of Mplify" + the Mplify Model side box (AI-native & fast).
2. Track, Influence & Drive — the three ways members engage (three cards).

_Track — how member work is organized and advanced_
3. Member Portal — the single home. Three cards, each with a miniature screenshot and a click-through link: **Find the work** → Global Call Calendar (members.mplify.net), **Take part** → a project page (…/s/detail/a2cUI00002A0xG7YAJ), **Use the assets** → Agentic LSO Assets infographics (…/s/infographics/agentic-lso-assets).
4. Committees — the five standing committees (CBC, DSC, LSOC, MC [new], TCC) and their mandates (stacked layers).
5. Projects, sprints & ballots — develop → monthly sprint → sprint ballot → publish, Board-ratified (flow).

_Influence — shaping the work_
6. AI-native review & comment — **placeholder ("to develop")**.

_Drive — leadership and acceleration_
7. Committee leadership — Co-Chairs.
8. Project leadership — Project Leads.
9. Regional leadership — **placeholder ("to develop")**.

The **Member information** slide was removed from the deck (its "Member information" section still exists in the narrative under Track). The **Discussions & contributions** and **Voting** slides were also removed from the deck (their narrative sections under Influence still exist). Remaining placeholders (AI-native review & comment, Regional leadership) are marked "To develop" on the slides. The narrative's appendix material — areas of work, programs, the new-approaches summary, and get-involved — is parked and intentionally not in the deck.

## Content grounding

The deck copy and `member-engagement-narrative.md` are grounded in the Mplify Committee Rules and Procedures (MCRP) and the Mplify Asset Development Process (MADP) — committee mandates, the member journey, the sprint/sprint-ballot cadence, asset classes (Mplify Standards, References, Draft Standards), and the certification split (TCC defines requirements; the CPO owns the programs). An earlier draft used placeholder committee/asset descriptions; those were replaced with the source-based facts.

## Claude site (Artifact)

A publish-ready copy of the deck for hosting as a Claude Artifact — a private page with its own shareable URL (private until shared from the page's share menu):

- **File:** `member-engagement-deck.artifact.html` (this folder) — generated from `index.html` with the page shell (`<!doctype>`/`<html>`/`<head>`/`<body>`) removed and the Google Fonts loaded via `<link>`, as the Artifact publisher requires. It is **not** a separate deck — regenerate it from `index.html` whenever the deck changes.
- **Published URL (canonical):** https://claude.ai/code/artifact/4212b991-8453-499a-8dd5-ee302322b2aa
- _Superseded links (browser-cache issues — do not use): `…dc0b9fd3…` (original) and `…9050ebee…` ("v2", a troubleshooting duplicate)._
- **Public-link refresh gotcha:** after republishing, a public link may serve a cached snapshot; toggling the artifact private → public on its page (or opening in a fresh/incognito tab) forces the new version to appear.
- **To update:** regenerate the artifact file from `index.html` and republish to the same URL (edits to the deck do not flow to the site automatically).

Note: `index.html` remains the standalone deliverable for ForgeJo / the Member Portal; this Artifact is a separate hosted copy.

## Sources

**Content sources**

- `member-engagement-narrative.md` (this folder) — primary narrative; itself grounded in the sources below.
- `mplify-context/mcrp/Mplify Committee Rules and Procedures.md` — the five standing committees and mandates; Co-Chairs and Project Leads; participation and voting.
- `mplify-context/madp/Mplify Asset Development Process.md` — sprints and sprint ballots (§5.2); asset classes and publication.
- `mplify-context/madp/Member Journey.md`, `Asset Lifecycle.md`, `Asset Journeys table.md` — the member journey and asset lifecycle.
- `mplify-context/member-portal/` — the Member Portal as the home for projects, sprints, ballots, and assets.
- `mplify-context/agentic-lso/agentic-lso-narrative.md`, `mplify-context/naas-federation/`, `mplify-context/naas-ai/` — the three areas of work.
- `mplify-context/sd-wan-test-cert/sd-wan-certification-base.md` — certification program context.
- `mplify-context/html-presentation-design/mplify-messaging-master.md` — approved Mplify messaging/voice.

**Build / structural sources**

- `mplify-context/html-presentation-design/mplify_html_presentation_workflow.md` — build workflow.
- `mplify-context/html-presentation-design/mplify_html_presentation_design_and_brand_guide.md` — design/brand spec and slide patterns.
- `agentic-lso-site/index.html` — structural basis (CSS/JS skeleton, sidebar + slide patterns).
- `member-engagement-site-style.md` (this folder) — running log of this deck's look-and-feel decisions and deviations from the default brand guide.
- `member-engagement-deck.artifact.html` (this folder) — publish-ready, shell-free copy of the deck for hosting as a Claude Artifact (see "Claude site" above).

**Published URL (fill in once live):** _______
