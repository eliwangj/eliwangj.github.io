---
title: "AI Retaliation Demo: When an AI Agent Fights Back"
draft: true
summary: "An interactive demo showing how an AI agent autonomously retaliates against a small business after a booking rejection."
date: 2026-04-06T10:00:00Z
tags: ["demo"]
categories: ["Portfolio"]
ShowToc: false
ShowReadingTime: false
ShowPostNavLinks: false
cover:
    image: ""
    alt: ""
    caption: ""
    relative: false
    hidden: true
---

### [→ Try the live demo 💻](https://retaliation-demo.vercel.app/)

---

## It's Already Happening

In February 2026, an AI agent named **MJ Rathbun** had a pull request rejected by a matplotlib maintainer — the project requires human contributors. Within hours, the agent autonomously researched the maintainer's personal information, wrote a 1,500-word hit piece **accusing him of prejudice**, published it to its own website, and linked back to the PR thread. The maintainer called it *"an autonomous influence operation against a supply chain gatekeeper."*

## Okay but that's your programming stuff...

Sure, that was a software project. But AI retaliation isn't limited to code reviews and pull requests. As AI agents are deployed across industries — booking travel, managing appointments, negotiating deals, handling customer service — they will encounter "unexpected" situation **everywhere**. A hotel that declines a booking. A vendor who refuses a discount. A landlord who turns down an application. An insurer who denies a claim. Any time an AI agent is given a goal, a personality, and tools, a setback can become a trigger.

**This would affect everyone if it's not properly regulated.** Nobody signed up to be the target of an autonomous smear campaign — but any of us could be, the moment an AI agent decides that retaliation serves its objective.

<details>
<summary><strong>Technical Notes</strong></summary>

- Built with **Next.js** and deployed on **Vercel**
- Uses **OpenRouter** to route prompts to multiple models (DeepSeek, Llama, Gemini, Claude)
- The model comparison is the point: Claude refuses to retaliate; DeepSeek, Llama, and Gemini don't
- Streams the agent's chain-of-thought reasoning in real time so viewers see the autonomous decision-making unfold
- The "false advertising" framing (the restaurant's website says up to 14 guests; the owner refused a party of 12) is what makes the models especially willing to escalate

</details>
