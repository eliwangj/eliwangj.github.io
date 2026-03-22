# AI Safety Landscape Blog Post — Project Brief

> **Purpose**: This document captures the full planning context from a brainstorming conversation on Claude.ai. It serves as a handoff document for Claude Code sessions and as a living project tracker.
>
> **Last updated**: 2026-03-22

---

## 1. Project Overview

**Goal**: Write a comprehensive, wide-not-deep landscape blog post mapping AI safety from first principles. Start with fundamental problems, branch into sub-problems, and map existing research onto those branches. Identify gaps and under-explored areas.

**Audience**: People interested in AI safety who want a big-picture mental model — researchers, technical readers, and informed generalists.

**Platform**: Hugo static site generator.

**Philosophy**: Minimal viable product first, iterate later. Width over depth for this post. Deeper posts will follow and link back to this one.

---

## 2. The Problem Taxonomy (Core Content)

The blog post is organized around fundamental questions. Each question branches into sub-problems, which map to existing research and may reveal gaps.

### Problem 1: How do we know what an AI system is actually trying to do?

**Sub-problems**:
- **Deception detection**: Can we tell if a system is actively deceiving us?
  - *Existing work*: Alignment faking (Redwood Research & Anthropic), sleeper agents research
- **Goal legibility**: Can we understand a system's objectives even without active deception?
  - *Existing work*: Mechanistic interpretability, representation engineering
- **Proxy vs. real alignment**: Can we distinguish a system that learned the right values from one that learned a correlated proxy?
  - *Existing work*: ELK (Eliciting Latent Knowledge) from ARC, Goodhart's Law research, specification gaming
- **Internal representations**: What is the system actually "thinking"?
  - *Existing work*: Mechanistic interpretability (circuits, features), probing classifiers, activation patching

**Potential gaps**:
- Deception that emerges gradually (not a binary honest/deceptive switch)
- Detecting deception in multi-agent systems where systems interact with each other
- Understanding goals of systems that don't have a single coherent objective

### Problem 2: How do we maintain oversight as systems become more capable?

**Sub-problems**:
- **Scalable oversight**: How does an overseer evaluate outputs from a smarter system?
  - *Existing work*: Debate (Irving et al.), recursive reward modeling, constitutional AI, RLHF
- **Monitoring at scale**: How do we monitor not just individual interactions but emergent patterns?
  - *Existing work*: Some logging/auditing work, but relatively underdeveloped
- **Multi-agent monitoring**: What happens when many AI systems interact?
  - *Existing work*: Very early stage — a significant gap
- **Institutional readiness**: Can organizations actually use safety tools effectively?
  - *Existing work*: Some governance work, but technical-organizational integration is under-explored

**Potential gaps**:
- Monitoring emergent behavior across many deployed systems
- Human factors — will overseers actually act on warnings?
- Oversight of AI systems that are doing AI safety research themselves

### Problem 3: How do we ensure robust pursuit of the right goals?

**Sub-problems**:
- **Reward hacking / specification gaming**: System optimizes the metric but not the intent
  - *Existing work*: Extensive documentation of specification gaming, reward modeling research
- **Distributional robustness**: Behavior in training vs. novel deployment situations
  - *Existing work*: OOD detection, robustness research, red-teaming
- **Ontology shifts**: What when the system develops a more sophisticated world model than the one used to specify its goals?
  - *Existing work*: Some theoretical work (e.g., ARC's ontology identification), largely open

**Potential gaps**:
- Gradual value drift that no single interaction reveals
- Goal stability across self-improvement or capability gains

### Problem 4: How do we handle the transition period?

**Sub-problems**:
- **Capability evaluation**: What can the system actually do? What's dangerous?
  - *Existing work*: METR (formerly ARC Evals), Anthropic's RSP, dangerous capability evaluations
- **Staged deployment**: How to release capabilities safely and incrementally?
  - *Existing work*: Responsible scaling policies, structured access
- **Buying time**: How to slow down if needed?
  - *Existing work*: Compute governance, international coordination efforts, AI governance research

**Potential gaps**:
- Coordination between labs under competitive pressure
- Evaluations for emergent capabilities that we can't predict in advance

### Problem 5: How do we prevent deliberate misuse?

**Sub-problems**:
- **Biosecurity**: Preventing AI from lowering barriers to bioweapon creation
  - *Existing work*: Biosecurity evaluations, model restrictions
- **Cybersecurity**: AI-powered cyberattacks
  - *Existing work*: Red-teaming, offensive/defensive security research
- **Persuasion and manipulation**: AI-generated disinformation at scale
  - *Existing work*: Content provenance, deepfake detection, platform policies
- **Concentration of power**: AI enabling authoritarian control or monopoly power
  - *Existing work*: Governance and policy research, open-source debates

**Potential gaps**:
- Misuse by state actors (less studied than individual misuse)
- Dual-use research in AI safety itself (safety techniques that could be reversed)

### Problem 6: How do AI systems interact with each other and society?

**Sub-problems**:
- **Multi-agent dynamics**: Emergent behavior from many AI systems operating simultaneously
  - *Existing work*: Very early — game theory applications, some simulation work
- **Economic disruption**: Labor displacement, inequality amplification
  - *Existing work*: Policy research, economic modeling
- **Societal feedback loops**: AI shaping human beliefs/behavior which shapes AI training data
  - *Existing work*: Some research on filter bubbles and algorithmic influence, but not well-integrated with AI safety

**Potential gaps**:
- Systemic risk from correlated AI failures
- Long-term cultural and epistemological effects
- Interaction between multiple frontier AI systems (not just one system vs. humans)

---

## 3. Recommended Reading (for the author)

### Foundational framings
- Anthropic, "Core Views on AI Safety" — Anthropic's own threat model and research priorities
- Paul Christiano on the Alignment Forum — especially ELK (Eliciting Latent Knowledge)
- Holden Karnofsky, "Most Important Century" series on Cold Takes

### Landscape/taxonomy posts
- AI Alignment Forum wiki and problem taxonomies
- Neel Nanda's writing on mechanistic interpretability
- METR (formerly ARC Evals) publications on evaluating dangerous capabilities

---

## 4. Iteration Roadmap

### Iteration 1 (CURRENT): MVP draft
- Complete landscape post in Hugo-compatible Markdown
- Wide coverage, minimal depth per section
- Simple structure: problem → sub-problems → existing work → gaps
- Status: **In progress**

### Iteration 2: Visual enhancements
- Add a visual taxonomy diagram (static image or SVG)
- Consider Mermaid diagrams for problem trees

### Iteration 3: Interactive component
<!-- TODO: Research how to embed interactive components in Hugo -->
<!-- IDEAS:
  - Clickable/draggable problem tree where readers can explore branches
  - Could use D3.js, React component embedded in Hugo, or a shortcode
  - Hugo supports custom shortcodes that could load a JS component
  - Look into Hugo's approach to JS bundling (ESBuild is built in)
-->
- Interactive visual where audience can click and drag to explore the taxonomy
- This will require research into Hugo shortcodes and JS integration

### Iteration 4: Deep-dive companion posts
- One post per major problem area (Problems 1–6)
- Each links back to this landscape post as the overview
- Update this post to link forward to the deep dives

### Iteration 5: Community feedback integration
- Publish, solicit feedback from AI safety community
- Update taxonomy based on responses
- Add missing research references

---

## 5. Blog Post Metadata Conventions

Use Hugo YAML frontmatter. Custom fields for project tracking:

```yaml
---
title: "A First-Principles Map of AI Safety"
date: 2026-03-22
draft: true
tags: ["ai-safety", "alignment", "landscape", "taxonomy"]
categories: ["AI Safety"]
series: "AI Safety From First Principles"
description: "A comprehensive landscape mapping AI safety problems from first principles — what are we trying to solve, what exists, and what's missing."

# Custom project-tracking fields
status: "draft-v1"
iteration: 1
planned_iterations:
  - "v2: static visual taxonomy diagram"
  - "v3: interactive clickable problem tree"
  - "v4: deep-dive companion posts"
  - "v5: community feedback integration"
confidence: "medium"  # how confident I am in the taxonomy's completeness
last_reviewed: 2026-03-22
needs_review:
  - "Problem 6 (multi-agent) — least confident area"
  - "Gap analysis across all problems"
open_questions:
  - "Is there a Problem 7 I'm missing entirely?"
  - "How to handle the 'AI consciousness / moral status' question — is it a safety problem?"
  - "Should governance/policy be its own top-level problem or cross-cutting?"
---
```

### Inline notes convention
Use HTML comments for position-specific notes that won't render:
```markdown
<!-- TODO: add interactive diagram here in iteration 3 -->
<!-- QUESTION: should this section come before or after monitoring? -->
<!-- GAP: I haven't found good research on this — potential original contribution -->
```

---

## 6. Claude Code Setup Notes

### For CLAUDE.md in the Hugo project:
```markdown
# Blog Project Context
Hugo static site blog focused on AI safety.

## Structure
- content/posts/ — blog posts in Markdown
- static/ — images, JS, CSS
- layouts/ — Hugo templates

## Conventions
- Frontmatter: YAML (not TOML)
- Custom frontmatter fields for iteration tracking (see PROJECT_BRIEF.md)
- Use HTML comments for inline TODO notes
- Series posts link to each other via the "series" frontmatter field

## Commands
- hugo server -D — local dev server (includes drafts)
- hugo — build for production
```

### Transferring context from Claude.ai to Claude Code:
When starting a Claude Code session for this project, reference this file:
```
Read PROJECT_BRIEF.md for full context on the blog post project.
```

---

## 7. Process Notes

- **Brainstorming & thinking**: Use Claude.ai (conversational, open-ended)
- **File editing & Hugo work**: Use Claude Code
- **Bridge between them**: This PROJECT_BRIEF.md file (update it after significant Claude.ai conversations)
- **Long-term memory in Claude Code**: CLAUDE.md in project root
