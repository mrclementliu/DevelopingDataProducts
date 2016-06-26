Visualizing the Effects of Offensive and Defensive Ratings on NBA Results
========================================================
author: Clement Liu
date: 6/25/2016

Background
========================================================

**National Basketball Association (NBA)**
- The ultimate objective of any game is to win, but *how* to win can be thought of as either:
    - Focusing on offense (e.g., attempt to win by scoring as many points as possible) **OR**
    - Focusing on defense (e.g., attempt to win by minimizing the opponent's scoring as much as possible)
- This application creates numerical and visual representations to see a team's performance both offensively and defensively. We can spot trends and generate estimates of how the team will perform in the near future.

Inspiration and Data Source
========================================================

- The inspiration for this project and the source of the data was from [Basketball-Reference](http://www.basketball-reference.com/). They are a wealth of knowledge for everything NBA-related.

- In the application, "Offensive Rating" is the **<font color= "blue">blue</font>** line and the "Defensive Rating" is the **<font color= "red">red</font>** line.

- Logic says that the higher the **<font color= "blue">blue</font>** line and the lower the **<font color= "red">red</font>** line the more successful the team is. The graphs support that thought, and the bigger the difference between the lines, the more extreme the team's record.

Demonstration of Application
========================================================

- By selecting your team, you can see their game records and offensive/defensive ratings since 2004.

- I am a fan of the LA Lakers, so that is what I will use as an example below.


```
   Team  Season Wins Losses Percentage  ORtg  DRtg
1   LAL 2015-16   17     65      0.207 101.6 111.6
2   LAL 2014-15   21     61      0.256 103.4 110.6
3   LAL 2013-14   27     55      0.329 104.2 110.6
4   LAL 2012-13   45     37      0.549 107.8 106.6
5   LAL 2011-12   41     25      0.621 106.0 104.4
6   LAL 2010-11   57     25      0.695 111.0 104.3
7   LAL 2009-10   57     25      0.695 108.8 103.7
8   LAL 2008-09   65     17      0.793 112.8 104.7
9   LAL 2007-08   57     25      0.695 113.0 105.5
10  LAL 2006-07   42     40      0.512 108.6 108.6
11  LAL 2005-06   45     37      0.549 108.4 105.7
12  LAL 2004-05   34     48      0.415 108.1 111.4
```

Visual Representation
========================================================

- Lastly, here is a sample of the graphs produced by the application.

![plot of chunk unnamed-chunk-2](presentation-figure/unnamed-chunk-2-1.png)
