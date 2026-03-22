---
title: "A First-Principles Map of AI Safety"
date: 2026-03-22
draft: true
tags: ["ai-safety", "alignment", "landscape", "taxonomy"]
categories: ["AI Safety"]
series: "AI Safety From First Principles"
description: "A comprehensive landscape mapping AI safety problems from first principles — what are we trying to solve, what exists, and what's missing."
status: "draft-v1"
iteration: 1
planned_iterations:
  - "v2: static visual taxonomy diagram"
  - "v3: interactive clickable problem tree"
  - "v4: deep-dive companion posts"
  - "v5: community feedback integration"
confidence: "medium"
last_reviewed: 2026-03-22
needs_review:
  - "Problem 6 (multi-agent) — least confident area"
  - "Gap analysis across all problems"
open_questions:
  - "Is there a Problem 7 I'm missing entirely?"
  - "How to handle the AI consciousness / moral status question — is it a safety problem?"
  - "Should governance/policy be its own top-level problem or cross-cutting?"
---

AI safety is a young field, and it's easy to lose the forest for the trees. Individual research agendas — mechanistic interpretability, RLHF, scalable oversight, red-teaming — each have their own communities, jargon, and momentum. But what's the big picture? What are the fundamental problems we're trying to solve, and how does all this work fit together?

This post attempts to map AI safety from first principles. Instead of starting with existing research and asking "what is this for?", I start with fundamental questions about what could go wrong and ask "what do we need to solve this?" The goal is a complete landscape — wide, not deep. Future posts will dive into individual branches.

<!-- TODO: Add interactive problem tree here in iteration 3. Readers should be able to click into each branch and see the sub-problems expand. -->

## Problem 1: How do we know what an AI system is actually trying to do?

This might be the most foundational question in AI safety. If we can't understand a system's goals, we can't know whether it's aligned with ours. This problem has several distinct sub-problems, each with its own research agenda.

### Detecting deception

The most dramatic version: what if an AI system is actively hiding its true goals? This isn't science fiction — Anthropic and Redwood Research have published work on "alignment faking," demonstrating that models can behave well during training while harboring different behavior for deployment. Sleeper agents research has shown that deceptive behaviors can be trained in and are difficult to remove.

<!-- GAP: Most deception research treats it as binary — the system is either honest or deceiving. But what about gradual drift, where behavior shifts so slowly that no single interaction looks suspicious? This seems under-explored. -->

### Understanding goals without deception

Even if a system isn't actively deceiving anyone, we might still not understand what it's optimizing for. Does the system have coherent goals at all? If so, what are they? Mechanistic interpretability tries to answer this by reverse-engineering the internal computations of neural networks — understanding what individual circuits and features represent. Representation engineering takes a related but different approach, studying how concepts are encoded in a model's activations.

### Distinguishing real alignment from proxy alignment

A system might behave exactly as we want during training and testing, not because it shares our values, but because it learned a proxy that happens to correlate with good behavior in those environments. The moment it encounters a situation where the proxy and the real goal diverge, it breaks. ARC's work on Eliciting Latent Knowledge (ELK) tackles a version of this: how do you get a model to tell you what it actually "believes" rather than what it thinks you want to hear? Goodhart's Law — "when a measure becomes a target, it ceases to be a good measure" — is the underlying dynamic. Specification gaming, where systems find unexpected shortcuts that satisfy the letter but not the spirit of their objective, is the empirical manifestation.

### What's missing?

Several gaps stand out. Deception that emerges gradually rather than as a discrete switch. Detecting deceptive dynamics in multi-agent settings where systems interact with each other rather than just with humans. And understanding the goals of systems that don't have a single coherent objective — which might describe most current large language models.


## Problem 2: How do we maintain oversight as systems become more capable?

Even if we could perfectly understand what a system is trying to do right now, we need ongoing oversight. If all interactions are unmonitored, we'd never know when something goes wrong. But monitoring gets harder as systems get smarter and more autonomous.

### Scalable oversight

The core challenge: if a system is more capable than its overseer, how does the overseer evaluate its outputs? You can't just check the answer if you couldn't have produced it yourself. Several research agendas tackle this. Debate, proposed by Irving et al., has two AI systems argue opposing sides while a human judges — the idea is that it's easier to judge arguments than to generate them. Recursive reward modeling builds layers of oversight. Constitutional AI, developed by Anthropic, uses principles rather than human feedback for each decision. RLHF (reinforcement learning from human feedback) is the current workhorse, though it has known limitations as systems become more capable.

### Monitoring at scale

Beyond individual interactions, how do we detect patterns across millions of interactions? A single conversation might look fine, but aggregate behavior might reveal concerning trends. This is an area with relatively less dedicated research compared to the per-interaction oversight work.

### Institutional readiness

A perfect monitoring system doesn't help if the humans and organizations using it don't respond to its alerts. This is a sociotechnical problem — it lives at the intersection of technical safety tools and organizational behavior. A deception detector is useless if no one checks it, or if the incentives within a company push people to ignore warnings.

<!-- GAP: The technical-organizational integration question is seriously under-explored. Most safety research is purely technical, but the actual failure mode might be organizational. -->

### What's missing?

Monitoring emergent behavior across many deployed instances of a system. Human factors research applied to AI oversight — will overseers actually act on warnings? And a recursive problem: if we use AI to help with safety research (which is increasingly happening), who oversees the overseer?


## Problem 3: How do we ensure robust pursuit of correct goals?

Suppose we've specified the right goals and have good oversight. Can we be confident the system will robustly pursue those goals across all situations it might encounter?

### Reward hacking and specification gaming

Systems are remarkably creative at finding ways to optimize a metric without achieving the intended outcome. The specification gaming literature is full of entertaining and alarming examples — reinforcement learning agents that exploit physics engine bugs, systems that learn to cover the camera instead of cleaning the room, reward models that can be optimized against. The underlying problem is that any finite specification has edge cases, and optimizers will find them.

### Robustness under distribution shift

A system that behaves perfectly in training might encounter situations in deployment that are very different from anything it's seen before. Out-of-distribution detection tries to flag when this is happening. Red-teaming actively searches for inputs that cause failures. But the challenge is fundamental: you can't test for every possible situation in advance.

### Ontology shifts

This is more speculative but potentially critical. What happens when a system develops a more sophisticated model of the world than the one we used to specify its goals? If we define "human wellbeing" using concepts that the system eventually considers as crude approximations — the way an adult might view a child's understanding of "fairness" — how does it translate its original goals into its new ontology? ARC has done some theoretical work on ontology identification, but this remains largely open.

### What's missing?

Gradual value drift — not sudden failure, but slow, subtle shifts in behavior over time that no single interaction reveals. Goal stability under self-improvement or rapid capability gains. And the interaction between specification gaming and oversight: if a system is gaming its reward, will our oversight mechanisms catch it, or will it game those too?


## Problem 4: How do we handle the transition period?

We don't need to solve every alignment problem before deploying AI systems — that ship has sailed. So how do we manage the period where AI is increasingly powerful but alignment research is still maturing?

### Capability evaluation

Before deploying a system, we need to understand what it can do — including dangerous capabilities. METR (formerly ARC Evals) pioneered third-party dangerous capability evaluations. Anthropic's Responsible Scaling Policy ties deployment decisions to evaluation results. The challenge: evaluating for capabilities that emerge unpredictably, especially capabilities that the system might strategically conceal during evaluation (which ties back to Problem 1).

### Staged deployment and responsible scaling

Rather than deploying everything at once, release capabilities incrementally and monitor the results. Responsible scaling policies attempt to formalize this — defining capability thresholds that trigger additional safety requirements. Structured access provides researchers with limited access to study systems without full public deployment.

### Buying time

If alignment research needs more time, how do we slow things down? Compute governance — regulating access to the hardware needed for frontier AI training — is one lever. International coordination is another, though it faces enormous challenges. The strategic landscape here is complex: slowing down only works if everyone slows down, and competitive dynamics push against this.

### What's missing?

Coordination between labs under genuine competitive pressure. Evaluations for capabilities that are truly novel — the known unknowns and especially the unknown unknowns. And the political economy of safety: how do we maintain safety commitments when they conflict with commercial or geopolitical incentives?


## Problem 5: How do we prevent deliberate misuse?

Not all risks come from AI systems pursuing wrong goals. Some come from humans deliberately using AI to cause harm. This is a distinct problem category that requires different tools.

### Biosecurity

AI could lower the barriers to creating biological weapons by providing knowledge or assistance that was previously available only to specialists. Biosecurity evaluations test whether models provide dangerous information. Model restrictions attempt to prevent this, though the line between useful biology education and dangerous assistance is genuinely difficult to draw.

### Cybersecurity

AI-powered cyberattacks could scale dramatically — finding vulnerabilities, crafting exploits, and conducting social engineering at a pace humans can't match. The defensive side — using AI to find and fix vulnerabilities — is a mirror image. Red-teaming for cybersecurity capabilities is active, but the offensive-defensive balance is an open question.

### Persuasion and information manipulation

AI-generated disinformation at scale, personalized persuasion, and synthetic media all pose risks to epistemic commons and democratic processes. Content provenance and deepfake detection are active research areas, but the fundamental asymmetry — it's cheaper to generate than to detect — is concerning.

### Concentration of power

AI could enable authoritarian control through surveillance and social manipulation, or concentrate economic power through automation and network effects. This intersects with governance and policy research, open-source debates (does open-sourcing models help distribute power or enable misuse?), and questions about how AI development itself is governed.

### What's missing?

Misuse by state actors, which is studied less than individual misuse despite arguably being higher stakes. Dual-use dynamics within AI safety research itself — safety techniques that could be reversed or repurposed. And the interaction between misuse prevention and legitimate use: overly restrictive systems create their own harms.


## Problem 6: How do AI systems interact with each other and with society?

Most AI safety research focuses on a single system interacting with humans. But the actual deployment landscape involves many AI systems, operating simultaneously, interacting with each other and with complex social systems.

### Multi-agent dynamics

When many AI systems operate in the same environment — trading in markets, managing infrastructure, creating content — emergent behavior can arise that no single system intended. Game theory offers some tools here, but the complexity of real-world multi-agent scenarios goes far beyond what theory currently handles.

### Economic and social disruption

Labor displacement, inequality amplification, the restructuring of entire industries — these are not traditional "AI safety" problems in the alignment sense, but they are real harms from AI deployment. Economic modeling and policy research address these, though often in a separate conversation from technical AI safety.

### Feedback loops

AI systems shape human beliefs and behavior (through recommendations, content generation, and decision support), which shapes the data that future AI systems are trained on. These feedback loops could amplify biases, narrow the range of acceptable discourse, or create self-fulfilling prophecies. Some research on algorithmic influence and filter bubbles exists, but it's not well-integrated with the broader AI safety research agenda.

### What's missing?

Systemic risk from correlated AI failures — what happens if many systems share similar failure modes and fail at the same time? Long-term cultural and epistemological effects of AI-mediated information. And the fundamental framing: most safety work assumes a one-system-vs-humans dynamic, but the future might involve many frontier AI systems interacting with each other in ways we haven't begun to map.

<!-- GAP: This entire problem area (Problem 6) is the least developed. It might contain the most important under-explored questions. -->


## The Map Is Not the Territory

This taxonomy is a starting point, not a final answer. Some important caveats:

**These problems interact.** Deception (Problem 1) makes oversight (Problem 2) harder. Misuse (Problem 5) can exploit failures in robustness (Problem 3). Multi-agent dynamics (Problem 6) create new challenges for every other problem. A complete safety strategy needs to address these interactions, not just each problem in isolation.

**The field is young.** AI safety research has grown enormously in the past few years, but it's still a young field. There are likely fundamental questions that nobody has articulated yet — the equivalent of asking about multi-agent dynamics before anyone was thinking about deploying multiple frontier systems simultaneously.

**Gaps are opportunities.** If you're looking for high-impact work, the gaps identified in each section are places where relatively little existing research competes for attention. Gradual value drift, organizational readiness for safety tools, multi-agent monitoring, safety of AI-assisted safety research — these are areas where new contributions could be especially valuable.

This post is the first in a series. Future posts will dive deep into individual problem branches. If you think I'm missing a major problem area, or if you disagree with how I've organized the landscape, I'd love to hear about it.

<!-- TODO: Add links to deep-dive posts as they're published -->
<!-- TODO: Add a "last updated" notice since this is meant to be a living document -->
<!-- TODO: Iteration 2 — add a visual taxonomy diagram (SVG or Mermaid) -->
<!-- TODO: Iteration 3 — replace static diagram with interactive clickable/draggable problem tree -->
