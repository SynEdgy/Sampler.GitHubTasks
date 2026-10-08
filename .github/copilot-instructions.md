# Copilot instructions for Sampler.GitHubTasks

## Git workflow

- Never run `git commit`, `git push`, or `git tag`. Leave commits to the user.
- Stage changes only when explicitly asked.
- Summarize changes so the user can review them with `git diff`.

## Build entrypoint

- Use `./build.ps1` for dependency restore, build, test, documentation, and validation work.
- Bootstrap with `./build.ps1 -ResolveDependency -Tasks noop`.
- Build with `./build.ps1 -Tasks build`.
- Test with `./build.ps1 -Tasks test`.
- Validate packaging and wiki generation with `./build.ps1 -Tasks pack`.
- Do not call `Invoke-Pester`, `Invoke-Build`, `Build-Module`, or other build helpers directly from a fresh shell.
- Do not manually prepend `output/RequiredModules` or `output/module` to `PSModulePath`.

## Repository constraints

- The built module is imported as `Sampler.GitHubTasks`.
- The module provides InvokeBuild tasks for GitHub integrations.
- Custom GitHub wiki content lives under `source/WikiSource` and is published through Sampler and `DscResource.DocGenerator`.
- Keep compatibility with Windows PowerShell and PowerShell 7 unless the manifest intentionally changes.
- Add an `Unreleased` changelog entry for behavior or workflow changes.

## Instruction files

- Follow the targeted rules in `.github/instructions/*.instructions.md`.
- Use `.github/skills/validate-changes/SKILL.md` to select validation scope.
