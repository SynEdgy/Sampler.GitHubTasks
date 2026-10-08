---
applyTo: "{.github/instructions/*.md,.github/prompts/*.md,.github/skills/*.md,**/AGENTS.md,.github/copilot-instructions.md}"
---

# AI Instruction Authoring

- Write short imperative directives for AI agents.
- Prefer bullets over prose.
- Remove filler, repetition, and duplicated context.
- Update existing rules on conflict instead of duplicating them.
- Use the narrowest `applyTo` glob possible.
- Keep `applyTo` as a string.
- Start instruction files with YAML frontmatter, except `.github/copilot-instructions.md` and `**/AGENTS.md`.
- Use `##` and `###` headings, bullets, backticks for code tokens, and fenced blocks for multi-line examples.
- Avoid conversational language and decorative emphasis.
