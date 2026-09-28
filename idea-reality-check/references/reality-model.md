# Reality Model and Hidden Assumptions

Turn a plausible idea into an explicit model of its operating conditions. Select relevant dimensions rather than copying every checklist into every report. The report must have a distinct Hidden Assumptions section and explain how key assumptions were checked.

For each important assumption, write a testable sentence, evidence, and status: supported, contradicted, or unknown. Separate intended interaction from actual behavior. Consider normal use, misuse, setup, transition, storage, cleaning, failure, and disposal.

## Shared questions

- Who uses, carries, installs, pays for, maintains, repairs, and is affected by it? Are those different people?
- What happens immediately before, during, and after use? Which hand, body, tool, device, app, or service is already occupied?
- What must be true about fit, timing, access, attention, strength, dexterity, connectivity, power, permissions, and learned behavior?
- What are the edge cases, failure states, and consequences? Can a user notice failure and recover safely?
- How often is it used, and where is it stored, charged, cleaned, repaired, returned, or disposed of?
- Which environments, users, devices, materials, versions, and regulations must be supported?
- What must be bought, installed, integrated, configured, replaced, or supported?
- Does the mechanism solve the actual job, or just make one visible motion or interface easier?

## Mechanical, wearable, and consumer hardware

Map bodies and connected parts as mechanisms, not ideal drawings. Identify degrees of freedom and coupling: translation, rotation, flexion, compliance, joint/body motion, backlash, and unconstrained motion. Check whether the design accommodates the full motion sequence, including combined yaw, pitch, roll, shoulder or torso movement, grip changes, balance, and line of sight where relevant.

Check loads and interfaces: forces, torque, leverage, friction, wear, fatigue, impact, vibration, tolerances, flex, deformation, fasteners, pinch/shear points, snagging, and failure containment. Examine water ingress/drainage, dust, grit, mud, oils, sweat, temperature, UV, corrosion, aging, and material compatibility when applicable.

Check actual use: body-size variation, clothing layers, gloves, helmets, eyewear, handedness, visibility, hearing, comfort, setup/removal time, cleaning, drying, folding, storage volume, weight distribution, repairability, replacement parts, and disposal. Include foreseeable misuse and safe failure. A static prototype may jam, leak, fatigue, or become difficult to clean in daily use.

For rotating rainwear, model head movement as a combination of yaw, pitch, roll, and neck/shoulder motion. Ask whether a rotating hood interface permits those motions without binding, exposing a water path, pulling fabric, adding a hard pressure point, or hindering folding and use. Compare that mechanism with a fitted hood that follows the head directly. This is a checklist, not a conclusion about a particular product.

For vehicle-mounted or deployable hardware, include mounting variability, vehicle/door trajectory, visibility, airbags and sensors, collision behavior, wind direction and gusts, vehicle-speed interlocks, accidental deployment, weatherproofing, storage, liability, inspection, and local road/vehicle rules. Model people and doors moving through the same space.

For powered or connected devices, add power/battery life, thermal behavior, charging, radio interference, connectivity loss, firmware updates, repair parts, electromagnetic or product-safety requirements, and degradation over time.

## Software and services

Trace the workflow from trigger to outcome. Include user roles, onboarding, frequency, switching costs, manual steps, error recovery, collaboration, support, and current tools. Check data ownership, provenance, quality, permissions, latency, retention, export, migration, privacy, security, and failure if a source/API/service disappears.

Map dependencies: OS/browser/device versions, APIs, rate limits, authentication, offline behavior, integrations, payment rails, store policies, accessibility, localization, and regulatory duties. Test duplicate, stale, missing, malformed, conflicting, delayed, or unauthorized data. Account for notifications, trust, approval steps, and attention. A technically possible workflow may impose more setup, review, or context switching than today's workaround.

For AI-enabled features, establish error costs, what users must verify, escalation paths, data boundaries, and whether net effort is saved after review and correction.

## Cost, safety, and boundary conditions

Do not infer BOM or unit economics from a concept sketch. List components, manufacturing steps, yield-sensitive interfaces, packaging, shipping, installation, returns, warranty, support, certification, tooling, and channel margin. Seek quotes or comparable sourced prices before numerical claims. Mark estimates and their basis.

Identify who may be harmed by normal use, foreseeable misuse, malfunction, or bystanders. Search official regulations and standards for the intended region. This checklist is not legal or safety certification. If a high-consequence question cannot be resolved publicly, state that and make specialist review or a controlled test the next step.

## Model complexity versus marginal benefit

Compare the proposed solution with the simplest realistic substitutes under the same conditions. Ask which share of actual situations each solves and what evidence supports it; what parts, actions, learning, maintenance, failure modes, or cost the proposal adds; whether the unsolved slice is valuable enough to justify the complexity; and whether an attachment, changed geometry, better fit, software, service, or existing object could deliver similar benefit. The useful “does a simpler approach solve 70–90% of the problem for a fraction of the cost/complexity?” framing is a test question, not a factual estimate. Measure it or leave it unknown.

If the share solved is anecdotal, describe it qualitatively or propose a measurement instead of assigning a percentage.
