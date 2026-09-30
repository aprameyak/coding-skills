---
name: frontend-design
description: Build distinctive, production-grade UI that avoids generic AI aesthetics. Use when creating or restyling interfaces, landing pages, dashboards, or component visuals.
---

# Frontend Design

## Goal

Ship UI with a clear visual point of view. Avoid default “AI slop” looks.

## Do

- Pick one composition idea for the first viewport; do not turn it into a dashboard of widgets unless it is a dashboard.
- Choose expressive typography; avoid default system/Inter/Roboto stacks when branding matters.
- Use atmosphere (gradient, texture, imagery) instead of flat single-fill backgrounds when appropriate.
- Define a small color system with CSS variables; commit to it.
- Make hierarchy obvious: brand/product, one headline, one support line, one CTA group.
- Add 2–3 intentional motions that reinforce hierarchy, not noise.
- Ensure responsive layout and accessible contrast/focus.

## Avoid

- Purple-on-white / purple-indigo gradient clichés by default
- Warm cream + terracotta + generic serif starter kits by default
- Card grids in heroes; floating badge clutter; pill soup
- Generic stock-icon rows and stat strips with no product meaning
- Overused glow, glassmorphism, and rounded-full everywhere

## Process

1. State the visual direction in one sentence.
2. Match existing design system if the repo has one; otherwise invent a coherent one.
3. Build structure first, then polish spacing/type/color/motion.
4. Check mobile and keyboard focus paths.
