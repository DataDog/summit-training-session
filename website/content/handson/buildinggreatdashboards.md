---
title: Datadog 101 - Building Great Dashboards
type: handson
description: Let's start building a set of dashboards to troubleshoot the test environment
weight: 2
duration: 20 minutes
---
# First Dashboard

1.  From the menu, return to the dashboard you created earlier.
1.  Drag and drop a timeseries widget onto the first well on the canvas. Notice that you can change the visualization at any time without having to drag another widget on the canvas.
1.  In the first textbox under **Choose metrics and events**, select `elasticsearch.search.query.current`. Notice that the textbox supports a fuzzy search so i can enter `elseaseaqc` and get to the right metric much more quickly.
1.  A line graph should be fine, but try the other display options from the **Display** dropdown. Play around with the different color palettes, styles, and strokes as well.
1.  What do you see in the **everywhere** and **everything** textboxes? What does this mean?
1.  Click the plus sign to the right to see the different functions available. We will learn more about these in the next section.
1.  Now click on the **Add Metric** button to add another metric line to your graph. Add `elasticsearch.search.fetch.current`.
1.  This created a graph with two lines, but sometimes you want a graph with a single line made up of several metrics. Drag another timeseries widget to the canvas.
1.  Select `system.cpu.user` for the metric.
1.  Now click the **Advanced...** link on the right.
1.  Click the **Add a metric to this expression** button and choose `system.cpu.system`.
1.  Now type `a+b` in the **Graph these queries as:** textbox. You now have a single line representing the value of the two metrics combined.
1.  Continue adding graphs to represent all the **Work** and **Resource** metrics we talked about.

## Questions

1.  How does your dashboard compare to the default HAProxy dashboard? Whats different?
1.  You added two metrics in the Advanced section. What else can you do with these metrics?


