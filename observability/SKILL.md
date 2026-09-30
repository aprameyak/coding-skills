---
name: observability
description: Add useful logging, metrics, and tracing. Use when instrumenting services, preparing production readiness, or debugging with telemetry gaps.
---

# Observability

## Defaults

- Structured logs with correlation/request IDs
- RED metrics for services (rate, errors, duration) or USE for resources
- Trace crossing service/process boundaries when distributed
- Symptom-based alerts with runbook links; avoid noisy low-value pages

## Process

1. Identify user-critical journeys and failure modes.
2. Instrument boundaries: entrances, exits, external calls, queues.
3. Log fields that explain decisions; exclude secrets/PII.
4. Define one dashboard and a few alerts for the journey.
5. Verify signals appear via a deliberate test/fault.

## Rules

- Instrument as you build; do not bolt on after silent failures.
- Prefer high-cardinality labels carefully; avoid unbounded label values.
- Match existing telemetry stack (OpenTelemetry, vendor SDKs, log format).
