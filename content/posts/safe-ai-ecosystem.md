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