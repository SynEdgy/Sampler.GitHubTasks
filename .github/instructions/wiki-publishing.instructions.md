---
description: 'GitHub wiki content and publishing instructions'
applyTo: 'source/WikiSource/**/*.md,build.yaml,RequiredModules.psd1,.github/workflows/*.yml,.github/workflows/*.yaml'
---

# GitHub Wiki Publishing Guidelines

## Source of truth

- Keep hand-authored GitHub wiki pages under `source/WikiSource`.
- Treat `source/WikiSource` as canonical; do not edit generated files under `output/WikiContent`.
- Prefer stable page names and relative `.md` links.

## Build wiring

- Use `DscResource.DocGenerator` for command and wiki documentation.
- Keep `DscResource.DocGenerator` and `PlatyPS` in `RequiredModules.psd1`.
- Generate command Markdown and external help before `Copy_Source_Wiki_Folder`.
- Keep `Copy_Source_Wiki_Folder`, `Generate_Wiki_Sidebar`, and `Package_Wiki_Content` in the `docs` workflow.
- Keep `Publish_GitHub_Wiki_Content` in the `publish` workflow.
- Keep `output/WikiContent.zip` in `GitHubConfig.ReleaseAssets`.
- Configure `Generate_Wiki_Sidebar.AlwaysOverwrite: true`.

## Validation

- Validate wiki or documentation wiring with `./build.ps1 -Tasks pack`.
- Confirm `output/WikiContent`, `output/WikiContent.zip`, generated command pages, and `_Sidebar.md` exist.
