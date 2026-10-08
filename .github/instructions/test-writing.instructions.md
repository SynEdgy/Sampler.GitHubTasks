---
description: 'Pester test authoring instructions'
applyTo: 'tests/**/*.tests.ps1'
---

# Pester Test Development Guidelines

- Follow the existing Pester 5 structure in `tests/Unit` and `tests/QA`.
- Import `Sampler.GitHubTasks` through the build-managed module path.
- Set the `InModuleScope`, `Mock`, and `Should` module defaults when testing module internals.
- Use `BeforeDiscovery` for data-driven test cases.
- Start new or modernized `It` descriptions with `Should`.
- Prefer specific assertions such as `Should -Be`, `Should -Throw`, and `Should -BeNullOrEmpty`.
- Keep mocks in the smallest practical scope.
- Wrap pipeline results in `@()` before using `.Count`, `.Length`, or indexing when Windows PowerShell compatibility matters.

## Validation commands

```powershell
./build.ps1 -Tasks test -PesterPath 'tests/Unit/Public/<FunctionName>.Tests.ps1' -CodeCoverageThreshold 0
./build.ps1 -Tasks test
./build.ps1 -Tasks hqrmtest
```
