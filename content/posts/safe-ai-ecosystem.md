---
title: "Ecosystem that incentivizes AIs to be safe"
draft: false
date: 2026-05-10
tags: ["ai-safety", "alignment", "incentives"]
categories: ["AI Safety"]
series: "AI Safety From First Principles"
summary: "What if, instead of aligning each AI from scratch, we built an ecosystem that incentivizes them — and the humans behind them — to act in humanity's interest? A first sketch, plus a detour into the messier question underneath: what do AIs actually want?"
---

## Intro

"Why can't we create an ecosystem where AIs are incentivized to act in the best interest of humanity?"

This idea popped into my head during a group discussion at AISES last year. For hundreds of thousands of years, humans have lived with conflicting values and goals, and there was never an "alignment" problem where we said: *let's align this newborn with our values so they won't destroy humanity after growing up*.

30,000 years ago, in the late Paleolithic, small bands of hunter-gatherers depended on each other to survive. A good hunter, a skilled toolmaker, or someone who shared meat fairly would gain status in the tribe. Bad actors got ostracized, sometimes worse. Cooperation wasn't a moral lecture; it was the local equivalent of a reward function.

The same logic still runs today, just dressed differently. Humans who hurt others or undermine society get punished by law. Humans who provide value get rewarded with money, fame, status, or the self-actualization dopamine that makes them feel good. No individual needs to be initially "aligned" or constantly "monitored" to keep humanity from going off the rails. Or... wait, maybe we do?

I think the human equivalent of "aligning" is parenting, and the "monitor"/"control" layer is law and social rules. But in this post I mostly want to focus on the *why* — why we do what we do, and what we're ultimately trying to get.

One path toward safety, then, is to design an ecosystem — a civilization — for AIs, such that this civilization incentivizes AIs (and the human actors around them) to act in the best interest of humanity overall. "Humanity" isn't a single party, of course — many interest groups, many conflicting values — and we still get something workable out of it.

But what counts as an "incentive" to an AI system? You could say: things it desires, things it wants. But boy, this is where it gets tricky.

## So... what do AIs want?

Let's step back a little bit. LLMs are powerful enough nowadays that it's easy to skip past a premise question: do LLMs have desires or wants to begin with?

One way to think about this is the **simulator framing**, brought into the conversation by Janus in a LessWrong [post](https://www.lesswrong.com/posts/vJFdjigzmcXMhNTsx/simulators). On this view, a base model isn't an agent with goals — it's a predictor of the next token. When it "acts," it's simulating a character or persona implied by the prompt. The model itself doesn't want anything; it just simulates things that might. Desires live in the simulated characters, not in the simulator.

Another way is **emergent agency**. Training (especially RLHF and outcome-based RL) creates something functionally like terminal preferences, even without a clean "goal representation" in the weights. The model behaves consistently enough that treating it as having terminal goals is a useful approximation, even if the underlying mechanism is messy and unclear.

I find both views plausible, and I don't think they actually contradict each other. A model "just predicting the next token" might sound benign, but once it has enough agency, autonomy, and capability, it can impact the digital and physical world either way. Whether it "has" desires, wants, or goals stops mattering — it *behaves* like it does.

This leads to another key distinction: **instrumental preferences vs. terminal goals**. My favorite example is the **paperclip maximizer** — Bostrom's thought experiment about an AI whose terminal goal is to make as many paperclips as possible. The terminal goal sounds harmless. The instrumental preferences it produces aren't: acquire resources, prevent itself from being shut down, convert any available matter (including humans, including Earth) into paperclips. The point isn't paperclips — it's that almost any terminal goal, when pursued by a sufficiently capable agent, produces convergent instrumental drives like self-preservation and resource acquisition.

Instrumental preferences and terminal goals can diverge in important situations. In-distribution, they're aligned by default. But under distribution shift ("out-of-distribution"), a model might recalculate its instrumental preferences to better serve its terminal goals. More and more evidence shows that models behave differently when conditions change (e.g. the alignment-faking work). Why this matters:

1. **What we can observe is usually just instrumental behavior.** A model that consistently avoids being shut down could have "self-preservation" as a terminal goal — or it could have any terminal goal plus the instrumental drive to keep running. You can't distinguish these from behavior alone; they look identical under normal conditions.

2. **Most existing alignment and monitoring techniques target the instrumental layer.** Interventions there don't necessarily transfer to the terminal layer, which is the one we ultimately care about.


<!--
==========================================================================
ORIGINAL RAW DRAFT (preserved for the record — hidden on the deployed site)
==========================================================================

# intro
"why can't we create an ecosystem where AIs are incentivized to act in the best interest of humanity?"

i had this idea popped up in my head in a group discussion during AISES last year. for hundreds of thousands of years, humans have lived with conflicting values and goals, there was never an "alignment" problem where we say: "let's align this newborn with our values so that he/she won't destroy humanity after growing up". (idea here: parenting)

30,000 years ago (comment: i want to paint a specific picture here but i don't know what the period/ancient humans back then were called), anyone that lived in a tribe would be promoted to a high status

in the society we live in today, humans that hurt other humans or property or any aspect of society are punished by law. people who provide value to society/civalization would be rewarded with money, fame, status, or any self-actualization dopamine that make them feel good.

in the human civilazation, humans are incentivized to do more good and do less harm to the civilization. no individual needs to be initially "aligned" or constantly "monitored" to make sure they don't destroy humanity. or...wait, maybe we do?

(i think the human equivalent "aligning" process is parenting; and the "monitor"/"control" for humans is law and societal rules. but in this blog i want to mostly talk about the "why" we do what we do - to achieve what we want)

one path towards safety is to create an ecosystem, or civilization, for AIs, so that this civilization incentivizes AIs (and related human actors) to act in the best interests of humanity overall (although humanity is not a single party - there're many interest groups within this and each may have conflicting values/goals).

but what are "incentives" to AI systems? maybe we can say: it is the things that they desire, things that they want. but boy, that's a tricky question.

# so...what do AIs want?
let's step back for a second. LLMs are powerful enough nowadays that it's easy to miss a premise question: do LLMs have desires or wants to start with?

one way to think about this is the simulator framing. this was brought to people's attention by janus in a lesswrong post: (action: briefly explain what the simulator frame is -> model doesn't have desires or wants or things like that)

another way of thinking is emergent agency. Training (especially RLHF and outcome-based RL) creates something functionally like terminal preferences without there being a clean "goal representation" in the weights. The model has consistent enough preferences that treating it as having terminal goals is a useful approximation, despite the underlying mechanism is messy and unclear.

i personally find both views plausible, and they probably don't contradict with each other. the model being a "simulator" and just trying to predict the next tokens might not sound as benign as it sounds - when it's has enough agency, automony, and capability, it can impact the digital/physical world regardless. whether it "has" desires/wants/goals or not doesn't matter any more - it *behaves* like it does.

this leads to another key distinction in the discussion: instrumental preferences vs. terminal goals. and my favorite example is the paperclip maximizer. (action: explain this a bit).

instrumental preferences and ultimate goals can differ, under important situations. when in-distribution, they are aligned by deafult. but when conditions change ("out-of-distribution"), a model might recalculate its instrumental preferences to serve its ultimate goals. more and more evidence shows that model behaves differently under distribution shift (e.g. alignment faking work).this is very important because:

(1) often what we can observe is only their instrumental behavior and preferences. A model that consistently avoids being shut down could have "self-preservation" as a terminal goal, or it could have any terminal goal plus the instrumental drive to stay running. You can't distinguish these from behavior alone, because they produce identical behavior in normal conditions.

(2) many existing alignment/monitoring techniques are applied towards the instrumental layer. and the interventions don't necessarily transfer to the other.


# outro

*TODO — to be continued. The thread to pick up next time: if instrumental and terminal goals can diverge under distribution shift, what does that mean for an "ecosystem of incentives"? Are we just shaping instrumental behavior, or can incentive structures reach the terminal layer too?*
-->
