---
description: 'Public function authoring instructions'
applyTo: 'source/Public/**/*.ps1'
---

# Public Function Development Guidelines

- Include `.SYNOPSIS`, `.DESCRIPTION`, `.PARAMETER` help for every parameter, and at least one `.EXAMPLE`.
- Use `[CmdletBinding()]`, explicit parameter types, and `[OutputType(...)]` for stable output.
- Preserve backward compatibility unless a breaking change is intentional.
- Keep user-facing messages aligned with files under `source\en-US`.
- Update matching tests under `tests/Unit/Public/<FunctionName>.Tests.ps1`.
- Cover successful behavior and input or failure behavior.
- Validate focused changes with:

```powershell
./build.ps1 -Tasks test -PesterPath 'tests/Unit/Public/<FunctionName>.Tests.ps1' -CodeCoverageThreshold 0
```

- Add an `Unreleased` changelog entry for user-visible behavior changes.
