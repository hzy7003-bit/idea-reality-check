# Submission Review Notes

## Package summary

- Plugin: **Idea Reality Check** (`idea-reality-check`), portable Agent Plugins format.
- Package version: **0.1.1**. The bundled Skill remains v0.1; this version adds a distribution wrapper and listing metadata only.
- Components: one Skill under `skills/idea-reality-check/`, one original SVG icon, listing metadata, and a published privacy policy.
- No MCP server, tools, login, OAuth, API key, database, backend, or custom UI is included.
- The `developerName` value in the package is the public GitHub handle `hzy7003-bit`; the verified Developer identity selected in the submission portal controls the directory publisher display name.

## Expected use

The Skill is intended for requests to test a product, invention, hardware, software, service, or startup idea against real user needs, alternatives, prior art, real-world constraints, and the lowest-cost next experiment. It should not activate for ordinary conversation unrelated to idea evaluation. Users may invoke it explicitly or describe an idea naturally.

The Skill's core `SKILL.md` is unchanged. Live findings depend on the research tools and sources available in the host. The Skill does not provide a legal freedom-to-operate opinion, a market guarantee, or investment advice.

## Privacy and review

The Plugin contains static instructions and assets only. It has no publisher-operated data collection or retention. See the public [`PRIVACY.md`](../PRIVACY.md). No reviewer account, credentials, video walkthrough, or MCP connection is needed for this skills-only package. The sample validation prompts are in [`TEST_CASES.md`](TEST_CASES.md); detailed regression rubrics remain in the Skill references and are not placed in its runtime prompt.

## Directory submission status

This repository prepares the package and materials but does not claim directory approval. Select the verified Developer identity and organization/project with upload permission in the Plugins dashboard. Review and resolve dashboard checks before submitting for review. Do not submit or publish without the publisher's explicit approval.
