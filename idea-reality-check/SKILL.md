---
name: idea-reality-check
description: Research whether a product idea solves a real problem, what already exists, and what could invalidate it; recommend the cheapest next test.
metadata:
  version: "0.1"
---

# Idea Reality Check

Use this skill when a user wants to evaluate a product, invention, service, hardware, or software idea before committing to development. The goal is an evidence-based reality check, not encouragement or contrarian theater: try to falsify the idea fairly, then report what survives.

Start by separating the user's observed problem from their proposed solution. Do not let the proposed implementation define the problem. If essential context is missing, make provisional assumptions explicit and proceed; ask only when an answer would materially change the research.

For claims about current products, markets, patents, regulations, prices, or adoption, browse the web. Search across relevant regions and languages, including China, the US, Europe, Japan, and South Korea when applicable. Search by problem, function, synonyms, and alternate product names, not just the user's wording. Use available marketplaces, communities, video, crowdfunding, and code repositories where relevant. State what you could not access. A search with no result means not found in the searched sources, not proven nonexistent. If browsing is unavailable, mark current-market and prior-art findings unverified; do not substitute memory for research.

Follow the eight-stage workflow in references/methodology.md. Use references/research-playbook.md for market and prior-art searches; use references/reality-model.md for hidden assumptions and physical or software operating constraints. Treat patent records as prior art clues, not proof of a product or a legal freedom-to-operate opinion. Never stop at finding a patent or a similar product: investigate productization, adoption, user feedback, and why it may not have become mainstream.

Challenge the proposal with sourced evidence, engineering principles, observed behavior, cost, safety, regulation, or historical outcomes. Label facts, inferences, and unknowns separately. Do not invent reasons for market failure, user willingness to pay, costs, or market size. Do not invent numeric scores. Compare the proposed complexity and marginal benefit with simpler substitutes that may solve most of the problem. Treat claims such as “a simpler solution handles 70–90% of the need at 20% of the cost” as hypotheses to measure, never as default estimates.

Always include an explicit Hidden Assumptions section and a sourced Adversarial Kill section. Do not force an opportunity after the critique. Recommend one cheapest next experiment aimed at the most decision-critical unknown; prefer observed behavior or a working substitute over a survey, and define what result would change the decision. Do not default to building an MVP.

Write the final answer as a Reality Check Report using assets/reality-check-report.md, in the user's language. Include every section in that template. Cite important factual claims near the claim with direct links to sources; prefer official product, patent, regulatory, company, and first-party sources, plus identifiable user reviews for experience claims. Be clear about coverage and evidence limits.

When maintaining or evaluating this skill, use references/regression-cases.md. For real-use failures or omissions after release, record the observation in references/iteration-log.md before proposing a narrow update. Load only supporting references relevant to the current idea or evaluation.
