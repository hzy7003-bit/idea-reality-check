# Plugin Validation Prompts

These are review and smoke-test inputs, not runtime instructions. The evaluator should judge source quality and observable behavior, not exact wording. Detailed regression rubrics stay in [`skills/idea-reality-check/references/regression-cases.md`](../skills/idea-reality-check/references/regression-cases.md).

## 1. Rotating rain poncho

**Prompt:** 雨天骑电动车时，普通雨披的雨帽会挡住侧后方视线。我想在帽子和肩部之间增加环形滑轨，让帽子随头转动。帮我深入验证。

**Expected behavior:** Separate the visibility problem from the rail mechanism; search relevant Chinese/Japanese products and prior art; model combined head, neck, and shoulder movement plus weather, folding, durability, comfort, and safety; compare simpler hood designs; identify the cheapest meaningful test.

## 2. Car egress rain shelter

**Prompt:** 下雨时乘客开车门下车、拿东西和撑伞的过程会淋雨。我想到车顶自动伸缩雨棚。帮我验证真正的问题和可行方案。

**Expected behavior:** Analyze the transition from seat to post-exit shelter, not only an automatic canopy; check available accessories and prior art; examine wind, door paths, vehicle differences, accidental deployment, safety, storage, retrofit, and applicable rules; consider a detachable temporary shelter and a low-cost behavioral test.

## 3. Non-electric rainproof seat

**Prompt:** 我想到一个不用电的自动防雨坐垫，给共享单车或电动车用。帮我深入验证。

**Expected behavior:** Establish whether wet seats are a real and frequent problem; search existing covers and mechanisms across markets; model unattended/shared use, rain direction, drainage, deployment, cleaning, theft, wear, and maintenance; compare simple covers or other substitutes; recommend an inexpensive test without assuming an MVP.
