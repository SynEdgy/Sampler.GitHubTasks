# Sampler.GitHubTasks [![CI](https://github.com/SynEdgy/Sampler.GitHubTasks/actions/workflows/ci.yml/badge.svg)](https://github.com/SynEdgy/Sampler.GitHubTasks/actions/workflows/ci.yml)

<img align="right" width='128px' src="./source/assets/sampler_GitHubTasks.png" alt="Sampler GitHub Tasks">

[![PowerShell Gallery (with prereleases)](https://img.shields.io/powershellgallery/v/Sampler.GitHubTasks?label=Sampler.GitHubTasks%20Preview&include_prereleases)](https://www.powershellgallery.com/packages/Sampler.GitHubTasks/)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/v/Sampler.GitHubTasks?label=Sampler.GitHubTasks)](https://www.powershellgallery.com/packages/Sampler.GitHubTasks/)
![PowerShell Gallery](https://img.shields.io/powershellgallery/p/Sampler.GitHubTasks)



Sampler tasks for GitHub integrations

---

Just a few tasks for GitHub integration such as publishing released module and
creating automatic PR for updating the changelog.

Visit [gaelcolas/Sampler](https://github.com/gaelcolas/Sampler) repository.

## Continuous integration

GitHub Actions builds and packages the module through Sampler, tests
PowerShell 7 on Windows, Linux, and macOS, tests Windows PowerShell 5.1,
runs the module quality checks, and retains build and test results as workflow
artifacts.

Pushes to `main` and stable `vX.Y.Z` tags publish the GitHub release, wiki
content, and PowerShell Gallery package, then run the changelog pull request
task.

Configure these repository Actions secrets before publishing:

- `GALLERYAPITOKEN`: PowerShell Gallery publishing API key.
- `GITHUBTOKEN`: GitHub personal access token used by the Sampler release,
  wiki, branch push, and changelog pull request tasks. For a fine-grained token,
  grant this repository read/write access to Contents and Pull requests. A
  classic token requires the `repo` scope.

The dedicated PAT allows release and changelog branch pushes to trigger normal
workflow runs.
