# idea-reality-check

**Stress-test product ideas against real-world evidence before building.**

> Try to kill the idea first. If it survives, find out why.

`idea-reality-check` is an AI Skill for testing whether a product idea addresses a real problem, what already exists, and what could invalidate the proposal. It looks at user needs and behavior, products in relevant markets, patents and prior art, engineering constraints, hidden assumptions, historical failures, simpler substitutes, and the cheapest next experiment. It does not default to encouraging a build or assigning unsupported market scores.

适用于生活产品、硬件、消费电子、机械结构、软件、App、SaaS、服务创新和改良型发明。核心流程会先把真实问题与用户提出的方案分开，再以证据攻击方案；如果仍有价值，再找出真正剩下的创新空间和最低成本实验。

## One Skill, two distribution paths

- **Skill:** `skills/idea-reality-check/` contains the analysis workflow and supporting references. It is the single source of truth.
- **Codex:** Install that Skill folder directly into the user-level skills directory.
- **ChatGPT:** The root `plugin.json` packages the same Skill as a skills-only OpenAI Plugin. The Plugin is a distribution wrapper; the Skill does the analysis. No MCP server, backend, API key, login, or external account connection is included.

**ChatGPT Plugin package supported / submission-ready.** This repository is not yet listed in the ChatGPT / OpenAI Plugins Directory; publication requires OpenAI's upload checks and review process.

## Codex installation

Codex user-level Skills live in `~/.codex/skills/`, or `$CODEX_HOME/skills/` when `CODEX_HOME` is set. On macOS/Linux, run:

```bash
git clone https://github.com/hzy7003-bit/idea-reality-check.git
mkdir -p "${CODEX_HOME:-$HOME/.codex}/skills"
cp -R ./idea-reality-check/skills/idea-reality-check "${CODEX_HOME:-$HOME/.codex}/skills/"
```

The installed Skill remains available as `$idea-reality-check`. Codex's user-level path and the `SKILL.md`-based structure follow the [OpenAI Codex Skill guidance](https://developers.openai.com/blog/eval-skills).

## ChatGPT Plugin package

The repository root is a portable Agent Plugin package. Its root `plugin.json` declares OpenAI listing metadata and points to the public privacy policy and an original geometric icon. The portable package discovers the Skill under `skills/`; the Skill files are not copied into a second location.

To create the submission ZIP, include the Plugin root contents (including `plugin.json` at the ZIP root). Do not wrap them in another directory. Review notes and sample validation prompts are under `submission/`; they are kept outside the Skill instructions so they are not part of the runtime analysis prompt.

For the current package layout, listing fields, icon requirements, privacy expectations, and skills-only submission flow, see OpenAI's [package guide](https://developers.openai.com/plugins/build/plugins), [Build skills](https://developers.openai.com/plugins/build/skills), [Plugin guidelines](https://developers.openai.com/plugins/plugin-guidelines), and [Submit and publish](https://developers.openai.com/plugins/deploy/submission). Skill-directory compatibility with other agents is plausible but has not been independently verified.

## Use

In Codex, explicitly call `$idea-reality-check`. In ChatGPT, install/select the Plugin or simply describe a product idea in a relevant conversation; the Skill description is designed to match idea-validation requests without targeting ordinary chat.

```text
我想到一个不用电的自动防雨坐垫，给共享单车或电动车用。

帮我深入验证一下这个想法。
```

The Skill produces a sourced Reality Check Report in the user's language. Findings about current products, markets, patents, or rules depend on the research tools and sources available in the host environment. Patent findings are prior-art leads, not a legal freedom-to-operate opinion.

## Versions and validation

- Skill core: **v0.1**. Its `SKILL.md` and workflow are unchanged by the Plugin packaging.
- Plugin package: **0.1.1**, a packaging compatibility update for the portable Agent Plugins format. This does not create or replace the existing GitHub `v0.1` release.
- Existing regression cases: rotating rain poncho and car egress rain shelter.
- Unfamiliar blind test: non-electric automatic rainproof seat.
- All three v0.1 cases passed. Their rubrics and evidence seeds remain in [`skills/idea-reality-check/references/regression-cases.md`](skills/idea-reality-check/references/regression-cases.md). Submission-only prompts are summarized in [`submission/TEST_CASES.md`](submission/TEST_CASES.md).

## English overview

`idea-reality-check` tries to falsify a product proposal fairly before recommending development. It separates the user's actual problem from the suggested mechanism, searches for existing solutions and prior art, checks whether the imagined model survives real-world use, asks why similar solutions have not become mainstream, compares simpler substitutes, and recommends a low-cost experiment. Evidence, inference, and unknowns are kept distinct; no unsupported numeric viability score is generated.

The same `SKILL.md` is used by both distribution paths: copy `skills/idea-reality-check/` to `~/.codex/skills/` for direct Codex installation, or install the root portable Plugin package. The Plugin adds listing metadata and packaging only; it does not add tools, data collection, or a server.

## License and privacy

The project is licensed under [MIT](LICENSE). See [PRIVACY.md](PRIVACY.md) for the Plugin's data practices.
