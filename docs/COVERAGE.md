# Coverage

Crawled at: 2026-10-05T09:39:48.734Z

## Gate 1 — Agenda coverage

- Agenda total: 70
- Parsed total: 70
- Missing: 0
- Extra: 0
- Duplicate IDs: 0

## Gate 2 — Lab coverage

- Labs discovered: 18
- Lab detail fetched: 18
- Lab schedule entries: 18
- Missing Lab Detail: 0

## Gate 3 — Speaker coverage

- Speaker URLs discovered: 57
- Speakers referenced by Session/Lab: 57
- Missing Speaker: 0

## Gate 4 — Detail page coverage

- Total sessions: 52
- Session detail fetched: 52
- Total labs: 18
- Lab detail fetched: 18
- FAILED DETAIL PAGES: 0

## Gate 5 — Time conflicts

Conflict groups use date + interval overlap, including workshops overlapping ordinary sessions. See ALL-SESSIONS.md and RECOMMENDATIONS.md.

## FAILED DETAIL PAGES

- None

## Detail Content Quality

- Session details total: 52
- Session real content valid: 50
- Lab details total: 18
- Lab real content valid: 18
- Boilerplate-only: 0
- Empty: 2
- Metadata-only official pages: 2
- Duplicate bodies: 0
- Validation rate: 97%
- Selector: .session-page for Session/Lab detail; .sp-page for Speaker detail

## Officially Missing Detail Content

The two `Welcome opening` pages are not boilerplate extraction failures. Browser verification shows that the official `.session-page` contains only date/time/room, title, level and language, with no abstract or learning content:

- [Session 4957](https://hwdc.ithome.com.tw/2026/session/4957) — metadata-only
- [Session 4998](https://hwdc.ithome.com.tw/2026/session/4998) — metadata-only

They remain `detail_content_valid: false`; no content was invented.
