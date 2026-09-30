---
name: browser-verify
description: Verify web UI in a real browser with repro steps. Use when validating frontends, fixing UI bugs, or running smoke/e2e checks.
---

# Browser Verify

## Process

1. Start or locate the local/dev URL and auth state needed.
2. Define the user path to verify (entry → action → expected UI/state).
3. Exercise the path in a real browser (Playwright/Cypress/DevTools/MCP browser tools as available).
4. Capture evidence: console errors, network failures, screenshots when useful.
5. Fix issues at the source; re-run the same path.
6. Add or update an automated e2e/smoke test when the path is critical and stable.

## Record

```
URL: ...
Steps:
1. ...
Expected: ...
Actual: ...
Console/network: ...
```

## Rules

- Prefer stable selectors (role/label/text) over brittle CSS chains.
- Do not rely on wall-clock sleeps; wait for conditions.
- Keep e2e coverage thin; push detail to lower-level tests.
