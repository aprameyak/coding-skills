---
name: accessibility
description: Audit and fix UI accessibility issues. Use when building UI, reviewing frontends, or when the user asks for a11y/WCAG work.
---

# Accessibility

## Checklist

- [ ] Keyboard reachability and visible focus for interactive controls
- [ ] Semantic HTML before ARIA; correct roles/names/states when ARIA is needed
- [ ] Form inputs have labels; errors are announced
- [ ] Images have appropriate alt text (or empty alt if decorative)
- [ ] Color is not the only signal; contrast meets target
- [ ] Hit targets are usable on touch
- [ ] Motion respects reduced-motion preferences when adding animation
- [ ] Dialogs/menus manage focus and dismissal

## Process

1. Walk the changed UI with keyboard only.
2. Check names/roles with accessibility tree tooling when available.
3. Fix root markup before adding ARIA patches.
4. Add regression coverage for critical flows when the stack supports it.

## Rules

- Prefer native elements (`button`, `a`, `label`, `input`) over clickable `div`s.
- Do not disable focus outlines without a better visible replacement.
