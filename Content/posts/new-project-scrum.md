---
date: 2020-05-01 16:21
description: Working with Blazor Server
tags: blazor, server, scrum, blog
---
# Working with Blazor Server
## New Project - ScrumPokerCards

Hello, recently I became Scrum certified and one of the take aways from the trainings was that Poker card estimation is very difficult to do in distributed work environments. Because I have been doing a lot of work in Blazor Server lately, I decided to put together a simple Blazor Server app to allow for user story estimation during Sprint planning.

There are two screens, one for the Scrum Master and one for the rest of the Scrum Team. The Scrum Master screen allows the Scrum Master to enter the story name, stop the voting, and start a new story (or repeat to find consensus). The normal screen allows a user to enter a name and vote on the size of a story. After voting, they wait for the Scrum Master to end the voting revealing the votes (or change their vote before voting ends).

Blazor Server is very powerful, especially for a use case with only one team using the site (the variables are stored in a Singleton service). Check out my progress or contribute on [GitHub](https://github.com/reedptaylor/ScrumStorySizer/tree/legacy/blazor-server)
