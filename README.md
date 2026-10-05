# idea-reality-check

**A portable Agent Skill for stress-testing product ideas against real-world evidence.**

> Try to kill the idea first. If it survives, find out why.

`idea-reality-check` tests whether a product idea addresses a real problem, what people already use, and what could invalidate the proposed solution. It examines user behavior, products across markets, prior art, engineering constraints, hidden assumptions, historical outcomes, simpler substitutes, and the cheapest useful next experiment. It does not default to encouraging a build or inventing market scores.

适用于生活产品、硬件、消费电子、机械结构、软件、App、SaaS、服务创新和改良型发明。分析会先把真实问题与用户提出的方案分开，再用证据攻击方案；如果仍有价值，再寻找剩余的创新空间和最低成本实验。

## One skill, multiple harnesses

The authoritative Skill source is [`skills/idea-reality-check/`](skills/idea-reality-check/): `SKILL.md` plus its linked `references/` and `assets/`. Platform packaging and install paths are separate from the analysis capability. `agents/openai.yaml` is OpenAI-specific metadata; other harnesses can ignore it. The Claude.ai ZIP builder makes a generated, lowercase `skill.md` copy at packaging time to match the filename used in Anthropic's upload instructions. It is not a second maintained source.

The root `plugin.json` is a distribution wrapper for the same Skill. The ChatGPT Plugin package is **submission-ready; publication is paused**. It has not been submitted for review or published. It needs no MCP server or external backend.

## Compatibility

Status reflects documentation and tests checked on **2026-10-05**. “Officially compatible” means the platform documents the relevant format or upload path; it does not mean this repository has been exercised inside that product.

| Platform | Status | Installation / invocation |
| --- | --- | --- |
| OpenAI Codex | ✅ Tested | Copy the Skill folder to `~/.codex/skills/` or `$CODEX_HOME/skills/`; call `$idea-reality-check`. |
| Claude Code | 🟢 Officially compatible; not locally tested | Copy to `~/.claude/skills/` or `.claude/skills/`; use `/idea-reality-check` or ask naturally. |
| Claude.ai Skills | 🟢 Official ZIP upload documented; not upload-tested | Generate the ZIP with `scripts/package-claude-ai.sh`, upload it under **Customize → Skills → Create skill → Upload a skill**, then enable it. Ask naturally; the reviewed help docs do not establish slash-command invocation in ordinary chat. |
| DeepSeek Harness | 🟢 Official Skills support documented; not locally tested | Install under `~/.dsh/skills/` (or a documented project root); configure its filesystem Skill provider and Skill consumer/loader before invoking `/idea-reality-check` or asking naturally. Harness is in public preview. |
| DeepSeek Deep Code | 🧪 Documented paths and manual invocation; full format/resource behavior unverified | User path `~/.agents/skills/`; project path `.deepcode/skills/`. Use its `/` picker or `/idea-reality-check`. Deep Code is a third-party client linked by DeepSeek; local testing was not possible. |
| Other Agent Skills clients | 🧪 Portable structure; host support varies | A client must implement Skill discovery, loading, and any desired invocation behavior. The format itself does not define installation directories or slash commands. |
| ChatGPT Plugin | ⏸ Submission-ready; publication paused | Existing package and submission materials are preserved. No draft, review submission, or publication is in progress. |

### What the statuses mean

- **✅ Tested:** tested in the named product or an existing verified installation.
- **🟢 Officially compatible:** the vendor documents the relevant Skill format or upload/install path, but this repository has not been runtime-tested there.
- **🧪 Expected / partial:** only some compatibility details are documented, or host behavior remains unknown.
- **⏸ Prepared but not published:** packaging exists, but directory submission/publication is paused.

Claude Code, Claude.ai, DeepSeek Harness, and Deep Code are not installed in the local environment. No large clients were installed just to test this Skill. Local structure, installer, and archive checks are listed below; they do not substitute for an in-product smoke test.

### Format and resource notes

| Host / format | What the current documentation establishes |
| --- | --- |
| Agent Skills format | `SKILL.md` has required YAML `name` and `description`; this Skill uses the standard `references/` and `assets/` folders, linked relative to its root. The format does not itself provide a runtime. |
| Claude Code | Supports bundled Skill files and referenced resources such as `references/`, `assets/`, and scripts. Its user and project Skill roots are documented above. |
| Claude.ai | The custom Skill ZIP may contain supporting files, references, assets, and scripts beside the instruction file. Account upload requires code execution to be enabled; the help center lists Free, Pro, Max, Team, and Enterprise plans. |
| DeepSeek Harness | Its filesystem provider discovers a Skill folder with `SKILL.md`; referenced resources resolve relative to the Skill base when loaded through the Skill system. Discovery does not recursively scan arbitrary nested Skill directories. |
| DeepSeek Deep Code | The reviewed guide documents Skill locations and manual selection, but does not fully specify frontmatter limits, automatic activation, or how linked references/assets are loaded. |

The portable description is 139 characters, within the current Claude.ai help-page limit of 200 and the Agent Skills specification limit of 1,024. Claude.ai upload and activation have not been tested in an account.

## Installation

Clone the repository, then use the small user-scope installer. It copies only the canonical Skill directory and refuses to overwrite an existing destination. It does not use root access or run network code.

```bash
git clone https://github.com/hzy7003-bit/idea-reality-check.git
cd idea-reality-check
./scripts/install-skill.sh codex
```

Supported installer targets:

```bash
./scripts/install-skill.sh claude-code
./scripts/install-skill.sh deepseek-harness
./scripts/install-skill.sh deepseek-deepcode
```

`claude` and `dsh` are aliases for `claude-code` and `deepseek-harness`. Destination roots are:

| Target | User-scope destination |
| --- | --- |
| `codex` | `${CODEX_HOME:-$HOME/.codex}/skills/idea-reality-check` |
| `claude-code` | `$HOME/.claude/skills/idea-reality-check` |
| `deepseek-harness` | `${DSH_HOME:-${DSH_AGENTS_HOME:-$HOME/.dsh}}/skills/idea-reality-check` |
| `deepseek-deepcode` | `$HOME/.agents/skills/idea-reality-check` |

If the destination already exists, the installer stops and explains which path conflicts. Inspect or back up that installation yourself before replacing it. For a project install, copy the same `skills/idea-reality-check` directory into the platform's documented project-level `skills/` root, after checking that the destination does not already exist:

| Platform | Project-scope directory |
| --- | --- |
| Claude Code | `.claude/skills/idea-reality-check/` |
| DeepSeek Harness | `.dsh/skills/idea-reality-check/` or `.agents/skills/idea-reality-check/` |
| DeepSeek Deep Code | `.deepcode/skills/idea-reality-check/` (the DeepSeek integration guide) |

### Claude.ai upload

Claude.ai supports user-uploaded Skills when code execution is enabled. Build a ZIP from the canonical Skill source:

```bash
./scripts/package-claude-ai.sh
```

The generated file is `dist/idea-reality-check-claude-ai.zip`. Upload it in Claude.ai under **Customize → Skills → + Create skill → Upload a skill**, and enable it after upload. The archive contains one top-level `idea-reality-check/` folder, `skill.md`, and the linked references/assets. The script omits the OpenAI-only `agents/openai.yaml` metadata. It refuses to overwrite an existing archive; pass a different output path if needed. The current help articles reviewed do not state a maximum ZIP size; that does not establish that the upload UI has no limit. Upload behavior and skill activation have not been tested in a Claude.ai account.

## How this differs from a typical idea validator

Many idea validators start with market sizing, personas, business models, or TAM/SAM/SOM. This Skill first checks whether the reported problem and proposed solution are actually the same thing, and tests the imagined model against real use.

It asks why older similar solutions did not become mainstream, whether a simpler option already solves most of the need, and whether the new solution merely moves work into manufacturing, maintenance, or operations. It treats “not found in the searched sources” differently from “does not exist,” and a patent differently from a solved market. Important claims should be sourced; facts, inferences, and unknowns stay distinct.

## Use

In Codex, call `$idea-reality-check`. In other hosts, install or enable the Skill and ask to evaluate the idea. For example:

```text
我想到一个不用电的自动防雨坐垫，给共享单车或电动车用。

帮我深入验证一下这个想法。
```

For current products, prices, patents, regulations, and market behavior, the analysis depends on the host's available research tools and sources. Patent findings are prior-art leads, not a legal freedom-to-operate opinion.

## Versions and validation

- Skill analysis core: **v0.1**, unchanged by the portability work.
- OpenAI Plugin package metadata: **0.1.1**. No Plugin draft or release workflow is active; the existing package, `PRIVACY.md`, and `submission/` materials remain in the repository.
- The rotating rain poncho and car egress rain shelter regression cases, plus the unfamiliar non-electric automatic rainproof seat blind test, all passed for the v0.1 core. Rubrics are in [`regression-cases.md`](skills/idea-reality-check/references/regression-cases.md); Plugin review prompts are in [`TEST_CASES.md`](submission/TEST_CASES.md).
- Local structural and packaging checks are run without installing Claude Code, DeepSeek Harness, or Deep Code. Platform support labels above describe what was actually documented versus runtime-tested.

## Documentation

The current platform references reviewed for this compatibility update:

- Portable format: [Agent Skills specification](https://agentskills.io/specification) and [client implementation guidance](https://agentskills.io/client-implementation/adding-skills-support).
- OpenAI: [Codex Skills](https://developers.openai.com/api/docs/guides/tools-skills); [Agent Plugin packaging](https://developers.openai.com/plugins/build/plugins) and [Plugin Skills](https://developers.openai.com/plugins/build/skills).
- Anthropic: [Claude Code Skills](https://code.claude.com/docs/en/skills); [create custom Skills](https://support.claude.com/en/articles/12512198-how-to-create-custom-skills); [use Skills in Claude](https://support.claude.com/en/articles/12512180-use-skills-in-claude).
- DeepSeek Harness: [filesystem Skill provider](https://github.com/deepseek-ai/deepseek-harness/blob/master/packages/skill/skill-filesystem/README.md), [Skill invocation](https://github.com/deepseek-ai/deepseek-harness/blob/master/packages/skill/tool-skill/README.md), and [Skills subsystem](https://deepseek-harness.github.io/deepseek-harness/en/reference/subsystems/skills).
- Deep Code: [DeepSeek's Deep Code integration guide](https://api-docs.deepseek.com/quick_start/agent_integrations/deepcode/) and the [Deep Code CLI documentation](https://github.com/lessweb/deepcode-cli).

The DeepSeek Harness links describe current upstream documentation without a release pin. Deep Code is a third-party client; its format limits and detailed resource-loading behavior are not fully specified by the reviewed guide. Recheck vendor documentation before relying on platform paths in a future release.

## License and privacy

Licensed under [MIT](LICENSE). See [PRIVACY.md](PRIVACY.md) for the paused Plugin package's privacy notes.
