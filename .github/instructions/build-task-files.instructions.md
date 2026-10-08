---
description: 'Custom InvokeBuild task authoring instructions'
applyTo: '{.build/tasks/*.build.ps1,.build/tasks/*.build.psm1}'
---

# Build Task Development Guidelines

## File layout

- Keep custom build task files under `.build/tasks/`.
- Name task files `<Purpose>.<Subsystem>.build.ps1`.
- Put reusable helper functions in a sibling `.build.psm1`.
- Keep task files focused on parameters, task definitions, orchestration, and task-scoped logging.

## Parameters and build context

- Start task files with a `param` block.
- Use InvokeBuild `property` defaults for task parameters.
- Include `$BuildInfo = (property BuildInfo @{ })`.
- Use fully qualified .NET parameter types.
- Do not hard-code output, source, manifest, version, or project paths.
- Dot-source `Set-SamplerTaskVariable` at the start of task bodies that use Sampler build context.
- Use `Get-SamplerAbsolutePath` for configurable task-facing paths.
- Do not re-derive values supplied by Sampler task variables.

## Task definitions

- Add a `# Synopsis:` comment before each task.
- Use compound tasks without a body when a task only sequences other tasks.
- Treat compound tasks as the stable public task surface.
- Use `Write-Build` for task output.
- Fail explicitly when required built output or configuration is missing.

## Helper modules

- Export helper functions explicitly.
- Keep helper modules free of task orchestration and task-scoped UI.
- Return state to the task file so the task controls sequencing and logging.
