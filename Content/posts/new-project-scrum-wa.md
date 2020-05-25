---
date: 2020-05-24 23:57
description: Improving ScrumPokerCards
tags: blazor, webassembly, scrum, blog, dotnet
---
# Working with Blazor WebAssembly
## Improving ScrumPokerCards

Microsoft recently released the official production version of [Blazor WebAssebmly](https://devblogs.microsoft.com/aspnet/blazor-webassembly-3-2-0-now-available/). I decided to use a Razor Class Library to share code and create a Web Assembly version of the Poker Cards web app I made for Blazor Server. By using an interface for the VotingService, I was able to use the name components, pages, css, etc between the two apps so that way any UI or functionality changes cascade across both versions. Because Blazor WebAssembly can run on its own, I used a SignalR hub on the server to facilitate updates to the voting and stories and store a cache (similar to the Blazor Server cache) for team members joining late.

I was also able to clean up the UI a bit with a nice disconnection dialog if the SignalR connection is ever lost.

Blazor WebAssembly has been very nice to use so far and it has been freeing to write the view logic in C#/.NET. Blazor WebAssembly is very powerful at this stage with the only downsides being its speed compared to other SPA frameworks and the Visual Studio support (debugging can be frustrating and Intellisense freaks out sometimes). These issues and more should be addressed with .NET 5 this fall.

I updated my [example server](https://poker.reedtaylor.org) to start using the WebAssembly version.

Check out my progress or contribute on [GitHub](https://github.com/reedptaylor/ScrumPokerCards)
