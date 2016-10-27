---
title: Building Great Dashboards
type: handson
description: Let's start building a set of dashboards to troubleshoot the test environment
weight: 2
duration: 30 minutes
---

# First Dashboard

1.  From the menu, create a new dashboard.
1.  Enter the name for your first dashboard. We are going to focus on HAProxy, so you can call it `My First HAProxy Dash` or anything you like.
1.  Click the **New Timeboard** button to create a Timeboard.
1.  Drag and drop a timeseries widget onto the first well on the canvas. Notice that you can change the visualization at any time without having to drag another widget on the canvas. 
1.  In the first textbox under **Choose metrics and events**, select `haproxy.frontend.requests.rate`. Notice that the textbox supports a fuzzy search so i can enter `hap.fe.rr` and get to the right metric much more quickly.
1.  We have only a single host so a line graph should be fine, but try the other display options from the **Display** dropdown. Play around with the different color palettes, styles, and strokes as well.
1.  The **everywhere** and **everything** textboxes don't have much effect on our single host, so click the plus sign to the right to see the different functions available. We will learn more about these in the next section.
1.  Now click on the **Add Metric** button to add another metric line to your graph. Add `haproxy.backend.session.rate`.
1.  This created a graph with two lines, but sometimes you want a graph with a single line made up of several metrics. Drag another timeseries widget to the canvas.
1.  Select `system.cpu.user` for the metric. 
1.  Now click the **Advanced...** link on the right. 
1.  Click the **Add a metric to this expression** button and choose `system.cpu.system`. 
1.  Now type `a+b` in the **Graph these queries as:** textbox. You now have a single line representing the value of the two metrics combined. 
1.  Continue adding graphs to represent all the **Work** and **Resource** metrics we talked about.

How does your dashboard compare to the default HAProxy dashboard? Whats different?

End of First Dashboard Section - [Return to Presentation](../../preso/buildinggreatdashboards/#/6)

# Apache

1.  Create a new Timeboard.
1.  Look back at the metrics we determined are the most important to watch. Create graphs that show them on this dashboard
1.  Ensure that you have added both work metrics and resource metrics.
1.  Does anything seem strange? 

End of Apache Section - [Return to Presentation](../../preso/buildinggreatdashboards/#/8)

# Notebooks

1.  From the menu, create a **New Notebook**.
1.  Choose apache metric that represents what was wrong. Adust the time period to ensure you have the problem in view. Configure the graph to ensure you are showing the problem.
1.  Click the gear icon at the top left of the current cell and choose **Insert Markdown above**. Describe the problem encountered.
2.  Click the **insert Markdown cell at end** link at the bottom. Describe the change that was made to the configuration.
3.  Add another graph cell at the end to show that Apache is running as it should.

End of Notebooks Section - [Return to Presentation](../../preso/buildinggreatdashboards/#/9/3)

# MySQL

1.  Create a new Timeboard.
1.  Look back at the metrics we determined are the most important to watch. Create graphs that show them on this dashboard
1.  Ensure that you have added both work metrics and resource metrics.
2.  Try adding some events to some of the graphs.
3.  Now do a search at the top for another event. 

# Combined Dashboard

1.  Create a Screenboard.
2.  Add a Text widget to the canvas and enter `Load Balancer` in the **Text to display** textbox.
3.  Add some of the HAProxy work metrics using any visualization you like.
4.  Repeat the last two steps for the Web Servers, choosing Apache metrics.
5.  Repeat again for the Database, choosing MySQL metrics.
6.  Arrange everything to create an attractive dashboard that tells a complete story. Whats the right timeperiod to show on this dashboard?
7.  Click on the gear icon at the top right of the dashboard and choose **Generate public URL**.
8.  Try the URL in a new browser window.

End of Dashboards Hands On 
