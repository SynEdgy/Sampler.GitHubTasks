---
name: validate-changes
description: Run targeted Sampler.GitHubTasks validation, then widen only when the changed surface requires it.
argument-hint: What files or areas changed, and how much validation is required?
---

# Validate Changes

## Mandatory rule

- Run validation through `./build.ps1`.
- Do not invoke Pester, InvokeBuild, ModuleBuilder, or documentation generators directly.
- Bootstrap dependencies with `./build.ps1 -ResolveDependency -Tasks noop`.

## Decision flow

1. For one public function, run its matching test:

```powershell
./build.ps1 -Tasks test -PesterPath 'tests/Unit/Public/<FunctionName>.Tests.ps1' -CodeCoverageThreshold 0
```

2. For module or test framework changes, run:

```powershell
./build.ps1 -Tasks test
```

3. For build, dependency, or pipeline wiring changes, run:

```powershell
./build.ps1 -Tasks test
```

4. For packaging, documentation, or WikiSource changes, run:

```powershell
./build.ps1 -Tasks pack
```

5. For the quality gate, run:

```powershell
./build.ps1 -Tasks hqrmtest
```

## Completion checks

- The selected validation scope passes.
- Matching tests are updated for behavior changes.
- `output/WikiContent.zip` exists after documentation changes.
- `CHANGELOG.md` contains an `Unreleased` entry for behavior or workflow changes.
