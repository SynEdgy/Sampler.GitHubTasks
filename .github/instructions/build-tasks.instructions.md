---
description: 'Build and workflow authoring instructions'
applyTo: '{build.ps1,build.yaml,RequiredModules.psd1,Resolve-Dependency.ps1,Resolve-Dependency.psd1,.build/tasks/*.build.ps1,azure-pipelines.yml,.pipelines/*.yml,.pipelines/*.yaml,.github/workflows/*.yml,.github/workflows/*.yaml}'
---

# Build and Workflow Development Guidelines

## Entry points

- Use `build.ps1` as the only bootstrap, build, and test entrypoint.
- Keep `build.ps1` aligned with the current Sampler bootstrap pattern.
- Prefer changing `build.yaml` for workflow composition, copied assets, tests, coverage, packaging, and documentation.
- Keep local InvokeBuild task files under `.build/tasks/` and expose them through the module suffix.

## Dependency and environment rules

- Restore dependencies with `./build.ps1 -ResolveDependency -Tasks noop`.
- Keep dependencies under `output\RequiredModules`.
- Do not manually edit `PSModulePath`.
- Prefer ModuleFast with the configured PSResourceGet fallback.

## Task and pipeline safety

- Reuse Sampler tasks instead of duplicating build, version, package, or publishing logic in CI.
- Keep full Git history available for GitVersion.
- Treat changes to build, dependency, pipeline, and Copilot setup files as validation-impacting changes.
- Run `./build.ps1 -Tasks test` after workflow wiring changes.
- Run `./build.ps1 -Tasks pack` after packaging or wiki wiring changes.
