# Marketing Office — working notes

Loaded automatically at the start of every Claude Code session on this repo.
Keep it short and factual; details live in the files it points to.

## Brands

Two separate brands. **Never connect them in public-facing content**, and never
link Hasnain Nasar to HomeEstimator.ai.

- **WA Construct** — NJ design-build / custom home builder.
- **HomeEstimator.ai** — paid AI construction cost-estimating platform.

## HomeEstimator.ai — verified brand facts

These are owner-supplied and authoritative. Full record, including the logo and
measurement notes: `.claude/brand/homeestimator-brandkit.md`.

| Field | Value |
|---|---|
| Name in copy | HomeEstimator.ai |
| Logo wordmark | Home Estimator |
| URL | https://www.homeestimator.ai/ |
| Primary CTA | **Book a demo** |
| Typeface | Inter |
| Primary audience | General Contractors |

Colors — navy base, gold accents, white text:

| Hex | Role |
|---|---|
| `#1a1a2e` | primary dark background |
| `#2d2d44` | secondary dark / raised surfaces |
| `#c9a96e` | muted gold — accents, borders |
| `#d4af37` | gold — headlines, CTAs |
| `#ffffff` | text on dark |

Still in force: no "free" language (the tool is paid); logo bottom-left and
blended on every creative; rotate proof points rather than stacking them; never
framed as a home-value or AVM tool.

## The brand-guard skill's reference is stale

`brand-guard` reads `references/homeestimator.md` from the synced skills
directory, which cannot be edited from a session. It is wrong on four points.
Trust this file and the brand-kit file over it:

| | brand-guard says | Actual |
|---|---|---|
| Background | deep black | navy `#1a1a2e` / `#2d2d44` |
| Gold | `#C9A84C`, `#F9E076` | `#c9a96e`, `#d4af37` |
| Type | Playfair Display + DM Sans | Inter |
| Primary CTA | 3-day money-back guarantee | **Book a demo** |

The money-back guarantee still exists as an approved proof point. It is not the CTA.

## Deliverable format

Finished content ships as `.docx`, never `.md`. Copy meant for pasting is plain
text with no markdown, but the delivered file is still a Word document.
