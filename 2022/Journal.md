# Advent of Code 2022
## Goals
I've never done Advent of Code before! I thought it sounded fun last year, but then was intimidated by needing to read an input (either from another text file or a web page) because I hadn't had to do it before, so I just closed it and moved on.

A lot of things have changed since last year, though! I'm getting more and more comfortable doing new things, and feel less overhwelmed by starting a new job. Plus I was reading a book about Ruby earlier this year, and one of the first things they teach you is to open and read a new file, which I immediately flagged as something useful to know for Advent of Code! Turns out it's not actually that scary, which really shouldn't surprise me.

While I work with Ruby and Rails on a regular basis at work, I still don't really feel like I know the ins and outs of the language the way I do with JavaScript, which is the first language I learned and probably the one I still know the best.

So my goal for Advent of Code is to have fun working through the problems and improve my Ruby! I'm not sure if I'll complete the whole thing or not, but during these first few days, I'm enjoying working through puzzles and learning new methods and approaches to solving these problems. One of the things I love most about coding is all the different ways to reach the same solution, so I'm especially enjoying seeing how other people are solving this problems and improving my own code as a result.

## Day Four
I am enjoying this immensely so far, but good lord does Ruby have a lot of methods! Sometimes I stumble across them when looking up how to do something, but a lot of the time I discover they exist when reading other people's solutions. Yesterday I remembered the `reduce` method exists, while today I learned about `cover`! 

Refactoring today's solution was interesting, as I initially used the `reduce` and `cover` methods, but then didn't like my solution. For some reason I didn't think `reduce` actually returned the reduced value (even though it does in JavaScript — I think I tested this wrong initially when I concluded it doesn't return a value the way I expected). So I felt like I had to use `reduce` in a function and then call that function, which didn't really improve my code much. And it added an extra couple of lines because you need the `else` statement returning the reduced value or else it defaults to nil and the method won't work (I'm lucky I didn't run into this yesterday!). And then the `cover` method felt more unreadable and bulky, even though it got rid of my function checking whether the values were in the specified range.

I kept playing with it, though, and realized that you _can_ set a reduce call to a variable. And then I started looking for better ways to check whether my value was in the range of the other pair and discovered the `between` method, because of course Ruby has a method for literally everything! I also fiddled with a few other things before settling on what I have now.

I'm pretty happy with my final solution! Though I discovered today that Ruby doesn't have the `++` increment shortcut, which I find rather annoying, ngl. I suppose a bunch of the other nifty things make up for it, but I still wish it was there!