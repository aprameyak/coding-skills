---
name: security-review
description: Audit code for common security vulnerabilities. Use when reviewing auth, input handling, crypto, secrets, or when the user asks for a security review.
---

# Security Review

## Focus Areas

- Injection (SQL, command, template, LDAP)
- XSS and unsafe HTML sinks
- AuthN/AuthZ gaps; IDOR; privilege escalation
- SSRF, path traversal, open redirects
- Insecure deserialization
- Secret exposure in code, logs, or client bundles
- Weak crypto, hardcoded keys, missing TLS verification
- CSRF on state-changing cookie sessions
- Unsafe file uploads and content-type trust
- Dependency risk for known critical CVEs in touched packages

## Process

1. Identify trust boundaries and entrypoints.
2. Trace untrusted data to sinks.
3. Verify authZ on every sensitive operation.
4. Check secret handling and logging.
5. Report findings with severity and exploit precondition.

## Output

```
Finding: ...
Severity: critical|high|medium|low
Location: file:line
Impact: ...
Fix: ...
```

## Rules

- Prefer concrete exploit paths over speculative fear.
- Do not request production secret values.
- Recommend fixes that match the stack’s idioms.
