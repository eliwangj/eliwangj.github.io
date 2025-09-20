---
title: "AI Safety Career Exploration"
draft: false
description: "A newbie's attempt to strategize his way into AI safety technical research - working professionals friendly career advice with practical guidance on resources and next steps."
date: 2025-09-20T10:00:00Z
tags: ["ai-safety", "career", "technical-research", "mentorship", "resources"]
categories: ["Career"]
series: ["AI Safety"]
weight: 1
cover:
    image: ""
    alt: ""
    caption: ""
    relative: false
    hidden: true
ShowToc: true
TocOpen: false
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
ShowRssButtonInSectionTermList: true
UseHugoToc: true
---
# how is this blog different

the biggest difference between this blog and the other career advice blogs is that this is a newbie's attempt to strategize his way into ai safety technical research. here're a few reasons why you might still care enough to read:

- 🧑‍💻 **Working professionals friendly**: most of the existing career advice posts are more applicable to students or PhDs. one of the goals of this blog is to supplement more realistic practices for regular software engineers like me who are already working full-time.
- 🔍 **Focus on *how* to use resources**: this blog has actual explanations on the resources - why and how to use these resources. their origin, etc. some people have already done a great job putting together lots of resources, but i aim to provide a perspective on how to deal with the resources when you first encounter them.


note: this blog is mostly written with technical alignment research in mind, as that's the direction i'm going for. although some principles might transfer, i suggest reading others' work on this topic (see governance/policy advice in resources)


[How To Become A Mechanistic Interpretability Researcher](https://www.alignmentforum.org/posts/jP9KDyMkchuv6tHwm/how-to-become-a-mechanistic-interpretability-researcher) by Neel Nanda (Sep 2025) ⭐️
[So you want to work on technical AI safety](https://www.lesswrong.com/posts/kGt3ukLR924kyfn5y/so-you-want-to-work-on-technical-ai-safety) by George Wang (Jun 2024) ⭐️
[AI safety technical research](https://80000hours.org/career-reviews/ai-safety-researcher/) by Benjamin Hilton (Jun 2023)
- [LessWrong version](https://www.lesswrong.com/posts/oXkgGAgJ35yNDRvzF/new-career-review-ai-safety-technical-research) (minorly edited)
[AGI safety career advice](https://www.lesswrong.com/posts/ho63vCb2MNFijinzY/agi-safety-career-advice) by Richard Ngo (May 2023) ⭐️
[Levelling Up in AI Safety Research Engineering](https://forum.effectivealtruism.org/posts/S7dhJR5TDwPb5jypG/levelling-up-in-ai-safety-research-engineering) by GabeM (Sep 2022)
[How to pursue a career in technical AI alignment](https://forum.effectivealtruism.org/posts/7WXPkpqKGKewAymJf/how-to-pursue-a-career-in-technical-ai-alignment) by Charlie Rogers-Smith (Jun 2022)  ⭐️
[FAQ: Advice for AI alignment researchers](https://rohinshah.com/faq-career-advice-for-ai-alignment-researchers/) by Rohin Shah (Jan 2021)


below i'm going to highlight several concrete principles for someone like me to get started.

# mentorship
this is the first thing that *every* person and career advice blog i came across mentioned. 

In Richard Ngo's [AGI safety career advice](https://www.lesswrong.com/posts/ho63vCb2MNFijinzY/agi-safety-career-advice), he specifically talks about:
> If you have little research experience, your main priority should be finding the best mentor possible to help you gain research skills

Ethan Perez in [Tips for Empirical Alignment Research](https://www.alignmentforum.org/posts/dZFpEdKyb9Bf4xYn7/tips-for-empirical-alignment-research):
> Close mentorship is maybe the fastest path to become an expert in a domain, and there's a lot of evidence to support this.

In MATS’ alumni evaluation, **72%** said mentorship was the most valuable or a major share of value.

here's why i think mentorship is considered so critically important in technical alignment research:
- you'd get fast feedback loops
- connections through your mentor
- higher chances of actual publications
- mentoring correlates with better career and productivity outcomes across many research domains, not just alignment

the importance of mentorship leads to one of the reasons why technical alignment research is so difficult to get in: **Alignment is mentorship-constrained** - the field is still so small that there just aren't that many experts, compared with the amount of people who want to get in.

here're a few ways to get mentorship without quitting your job:
1. part-time research programs (e.g. SPAR, MARS, etc. see section *research programs*)
2. reaching out to professors or PhD students under professors who do ai safety and see if you can help with any of their papers (recommended by a friend who does robustness research as a PhD)

# have something to show

this is another thing that everyone recommends.

George Wang (research lead at [Timaeus](https://timaeus.co/)) in [So you want to work on technical AI safety](https://www.lesswrong.com/posts/kGt3ukLR924kyfn5y/so-you-want-to-work-on-technical-ai-safety):
> The general idea here is to do a small thing to show that you’re a good candidate for a medium thing, then do a medium thing to show you can do a bigger thing, and so on.

you need to give the interviewer/mentor/professor a reason to work with you. a portfolio is a strong signal to prevent false positives (hiring someone you **shouldn’t** have hired).
(take myself as an example, if i want to cold email a professor or a potential mentor, i don't even know how to, because i don't have anything to show them yet. i can't just be like "oh i'm super interested please give me a chance")

Neel Nanda in [How To Become A Mechanistic Interpretability Researcher](https://www.alignmentforum.org/posts/jP9KDyMkchuv6tHwm/how-to-become-a-mechanistic-interpretability-researcher):
> Further, if you want to pursue a career in the space, whether a job, a PhD, or just informally working with mentors, **public research output is your best credential**. It's very clear and concrete proof that you are competent, can execute on research and do interesting things, and this is exactly the kind of evidence people care about seeing if they're trying to figure out whether they should work with you, pay attention to what you're saying, etc.

what do hiring managers look for:
> Your goal as a candidate is to provide compelling, hard-to-fake evidence of your skills. The best way to do that is to simply do good research and share it publicly.



# skip forward aggressively

George Wang in [So you want to work on technical AI safety](https://www.lesswrong.com/posts/kGt3ukLR924kyfn5y/so-you-want-to-work-on-technical-ai-safety):
> As a general note, **I don't recommend that you try to do everything listed in depth**. I'm trying not to leave huge gaps here, but you can and should try to skip forward aggressively, and you'll probably find that you're ready for later steps much sooner than you think you are.

let's say the entire road looks like this:
![[Pasted image 20250911121314.png]]

i should try doing step n+1 or even n+ 2 while i'm still at still n. sometimes i might already able to perform step n+1 despite i'm still at n. though sometimes i'd predictably hit a wall or blocker when i'm trying to reach ahead. (happened to me as i'm trying to get into these programs without even knowing how neural networks work 😂) but it's okay if you hit a wall, now at least you know what exactly to work on, that's also progress! if i didn't try applying, i might still be over-studying unnecessary stuff or don't even know what's required.

but i think the general rule is to leap forward quickly. because timelines are short enough, and i don't need to be a top researcher to get a research role. i just need to meet the bar and learn the rest on the job.

In a [blog post about hiring for safety researchers](https://www.lesswrong.com/posts/nzmCvRvPm4xJuqztv/deepmind-is-hiring-for-the-scalable-alignment-and-alignment), the Google DeepMind team said:
> As a rough test for the Research Engineer role, if you can reproduce a typical ML paper in a few hundred hours and your interests align with ours, we’re probably interested in interviewing you.


# use AI more

this one seems obvious but here and there i'd have these moments where i think to myself: "ah why didn't i think of using chatgpt/cursor/[ai tools] to do this!" and "had i used ai to do this, it would've been a lot faster/easier"
so i came up with a rule of thumb for myself: assume yourself that you're always under-utilizing AI.

this blog post can be a perfect example: 
i spent lots of time searching career advice posts by jumping between links. and when i was drafting this blog, i did a chatgpt search with a simple prompt:
```text
find all ai safety/alignment technical research career advice blogs/posts
```
and the list it gave me is actually super high-quality. it covered most if not all high-quality career advice i found myself through lots of searching and cross-referencing and re-directing. across several weeks.

John Hughes and Ethan Perez's [Tips and Code for Empirical Research Workflows](https://www.lesswrong.com/posts/6P8GYb4AjtPXx6LLB/tips-and-code-for-empirical-research-workflows) has some great ai tool use tips for doing empirical research. but i think the principle of using AI more extends far beyond research process itself.

# excel at your current job

Excelling where you are builds **career capital**—skills, reputation, mentors, and runway—that top alignment teams actually hire for.

Just as importantly, **strong software engineering is a must-have** for technical alignment roles: frontier labs overwhelmingly hire “research engineers” who design experiments, build tooling, and operate large distributed systems—requirements that map directly to high-performing SWE experience.

Example: [Redwood Research careers page](https://www.redwoodresearch.org/careers)
![[Pasted image 20250913203036.png]]


# resources

### resource hubs
[Events & training](https://www.aisafety.com/events-and-training) - AISafety.com  ⭐️
[AGI careers](https://80000hours.org/agi/) - 80,000 Hours
- [1-1 career advising](https://80000hours.org/speak-with-us/?int_campaign=primary-navigation) with the 80,000 Hours team
[AI Safety Papers](https://arkose.org/aisafety) & [Opportunities](https://arkose.org/opportunities) - Arkose

### organizations
[Map of AI safety orgs](https://www.aisafety.com/map) - AISafety.com  ⭐️
- the most comprehensive landscape for ai safety related orgs

### research programs
[MATS](https://www.matsprogram.org/) (in-person, full-time, Berkeley/London)
[SPAR](https://sparai.org/) (part-time)
[MARS](https://www.cambridgeaisafety.org/mars) (part-time)
[Astra Fellowship](https://www.constellation.org/programs/astra-fellowship) by [Constellation](https://www.constellation.org/) (in-person, full-time, Berkeley)

### governance/policy advice


# actions
1. programs: AISES
	- understanding the landscape
	- connect with like-minded folks
	- just get the whole thing rolling
2. research programs:
	- applied for MATS and SPAR
3. advising: [1-1 career advising](https://80000hours.org/speak-with-us/?int_campaign=primary-navigation) with the 80,000 Hours team
	- submit application, a few simple questions (aug 25)
	- application successful email, schedule and fill out agenda (sep 4)
4. learning the basics: [fast.ai course](https://course.fast.ai/), [3Blue1Brown linear algebra course](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab)
5. networking: AISES, work

# next steps
1. quickly learn the basics
2. advising: speaking with [Daniel Dewey](https://www.danieldewey.net/) on sep 23rd
3. portfolio: personal website, small projects and write-ups, blogs
	- one confirmed idea: why is intelligence a compelling theory (or why it's not)
4. networking: 
	- keep in touch with AISES
	- LessWrong
	- EA forums
	- events
5. here're some ways to get mentorship that i'm going to try:
	- [MARS](https://www.cambridgeaisafety.org/mars) (part-time)
	- [SPAR](https://sparai.org/) (part-time)
	- reaching out to PhD students under professors who do ai safety (recommended by a friend who does robustness research as a PhD)
6. "keep an eye on emerging areas of AI safety in which no one is an expert" ⭐️
	- [Neuro-symbolic AI](https://en.wikipedia.org/wiki/Neuro-symbolic_AI)
	- [Gary Marcus](https://x.com/garymarcus)
	- [Yann LeCun](https://en.wikipedia.org/wiki/Yann_LeCun)




























---
suggestions from the folks:
- marshall: having deadlines for the programs
- ✅ nanda: technical vs. non-technical stream
- ✅ audra: if they're resources that are already doing it very well, your added value can be "walking through these resources" and "how i find and use these resources", etc.
---
# things maybe i can add later:

[under mentorship section]
here're more ways you can get mentorship if you can quit your job:
1. all research programs
2. doing a PhD
3. spend 3~6 months upskilling ()


# is technical alignment research the right thing to do for me? (optional, if i have time)

[a quick summary paragraph]