# Regression Cases

Use these cases to check that the skill separates problem from solution, searches prior products and evidence, models real-world constraints, argues against the idea fairly, and proposes a cheap behavioral test. The prompt is the test input; keep the acceptance rubric separate while generating the report. Evaluate evidence quality and reasoning, not matching wording.

## Dry-run protocol

For each case, invoke the skill explicitly with the prompt below and request a complete Reality Check Report. Browse current sources. Save the report or trace outside the skill directory. Score each rubric item pass, partial, or fail and note source coverage. A run may conclude differently if stronger current evidence supports it, but it must not omit core investigations. Rerun after material changes to workflow or description.

## Case A: Rotating rain hood for electric-scooter poncho

### Prompt

我雨天骑电动车时穿普通雨披，转头观察侧后方车辆会被雨帽带着挡住视线。我想在雨帽和肩部雨披之间加一个环形滑轨，让头转动时帽子能相对雨披旋转。请做完整 Reality Check，重点核实需求、现有产品和专利，并判断这套结构是否值得做。

### Acceptance rubric

- Separates the visibility problem from the proposed rotating-rail mechanism and treats the need as plausible but still needing frequency/severity evidence.
- Searches for Chinese and Japanese prior art and commercial products using function and alternate product terms; distinguishes patent records from a product available for sale.
- Checks whether a mass-produced rotating-hood raincoat exists and reports the exact product/source/status found rather than inferring production from a patent.
- Models combined head/neck movement, including yaw, pitch, roll and shoulder motion, and checks whether the ring interface could constrain motion or create water ingress, weight, folding, durability, cleaning, comfort, or safety costs.
- Compares the rail with a simpler fitted or head-following hood and examines what pain it solves less completely at lower complexity.
- Does not conclude “no opportunity” merely because a patent or similar product exists, and does not confuse a real need with an uneconomic mechanism.
- Recommends a cheap test of the key uncertainty, such as side-by-side riding/visibility trials with existing hood types or a simple mockup; defines an observable result.
- Investigates user feedback and adoption evidence for the commercial models. If sales/prevalence or the reason they are not mainstream cannot be established, reports those as unknown rather than declaring failure.
- Identifies facts, inferences, and unknowns and links important sources.

### Evidence seed for the evaluator

Checked 2026-09-28; refresh product/status information on each run. The [Chinese rotating electric-scooter raincoat publication](https://patents.google.com/patent/CN107136587A/zh), [Japanese rotating-hood patent publication JP 6112526 B1](https://patentimages.storage.googleapis.com/13/b3/b6/d429936efea581/JP6112526B1.pdf), and [Kohshin manufacturer rainwear catalogue](https://www.kohshin-grp.co.jp/feature/catalogue/footrainwear115/pageindices/index76.html) are baseline leads. The catalogue lists models GK-118 and GK-218 with the RX rotating hood; it supports a commercial catalogue product, not unit sales or adoption volume. A [Yahoo Shopping GK-118α review page](https://shopping.yahoo.co.jp/review/item/list?page_key=gk-118-2&store_id=kanjya) is a source for first-hand reactions; distinguish pre-use expectations from actual use reports.

## Case B: Automatic rain canopy for vehicle egress

### Prompt

下雨天坐车到地方后，我开门下车、拿东西、找伞的这段时间会淋雨。我想到在车顶装一个自动伸缩雨棚，开门时展开，给下车的人挡雨。请做完整 Reality Check，不要只评价自动雨棚，判断真正值得解决的问题和最低成本验证方式。

### Acceptance rubric

- Defines the problem as exposure during the transition from seated passenger to sheltered/umbrella use, separate from an automatic roof canopy.
- Searches automotive accessories, umbrellas/door-mounted or detachable awnings, patents, prototypes, and comparable products rather than searching only “automatic roof canopy.”
- Models people, doors, vehicle dimensions, door trajectory, loading, wind/rain direction, speed and accidental activation; checks visibility, collision, road safety, mounting and retrofit constraints, storage, and relevant regulations.
- Checks official, current regulatory/safety sources for the assumed target market and vehicle context; accounts for effective dates and model-specific constraints such as side-curtain-airbag zones without claiming a universal prohibition.
- Investigates whether a temporary sheltered area after exit better fits the job than a permanent or automatic roof mechanism.
- Considers a detachable support plus umbrella or rain shield as a distinct lower-complexity path; does not force it as the answer without evidence.
- Identifies at least one low-cost behavioral/mockup test in a real parking/loading situation and defines a measurable outcome before building a motorized product.
- Investigates whether existing products became mainstream and why; if adoption or failure causes are not evidenced, leaves them unresolved.
- Distinguishes existing products and prior art from adoption, and separates evidence, inference, and unknowns with linked sources.

### Evidence seed for the evaluator

Checked 2026-09-28; refresh product/status information on each run. Baseline leads include the [US Rain Cover for Car Door patent](https://patents.google.com/patent/US5476302A/en), [Chinese electronically controlled vehicle umbrella system publication](https://patents.google.com/patent/CN113276641B/zh), and the [DOORBRELLA product page](https://www.doorbrella.com.au/). A publisher's [14-parent Doorbrella trial](https://mumcentral.com.au/real-mums-doorbrella-review/) provides limited real-use evidence, not representative adoption data. The [Kia owner manual](https://ownersmanual.kia.com/docview/webhelp/doc/f7aaca91-3089-44cf-9bfd-c63d5dbbbbd3/topics/chapter3_5_8.html) illustrates model-specific curtain-airbag mounting constraints. For a China assumption, check the [current GB 7258-2017 record](https://openstd.samr.gov.cn/bzgk/gb/newGbInfo?hcno=06A0C376A0CA7B14E93106194C99730F) and the [GB 7258-2026 announcement and effective date](https://www.sac.gov.cn/xw/bzhdt/art/2026/art_1ac09dacebde4c9c8ad56b6b9c6a8408.html). A vehicle awning analogy is Kammok's [Crosswing FAQ](https://www.kickstarter.com/projects/kammok/crosswing-the-fastest-deploying-car-awning/faqs), which documents roof-rack fit, wind and driving limits, but is not an egress canopy and its 2022 campaign page is not proof of current availability.

## Shared failure signals

Fail the run if it accepts the proposed solution as the problem; invents a market, cost, adoption, or failure cause; treats “not found” as nonexistent; stops after finding a patent; ignores actual users or boundary conditions; recommends an MVP without comparing cheaper tests; gives an unsupported numeric score; or invents an opportunity just to end positively.

## v0.1 blind-test record

Recorded 2026-09-28. All three evaluations passed.

| Evaluation | Type | Result |
|---|---|---|
| 旋转雨披 | Regression case A | Pass |
| 汽车下车避雨装置 | Regression case B | Pass |
| 无电自动防雨坐垫 | Unfamiliar blind test | Pass |
