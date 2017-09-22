---
title: Datadog 101 - Monitoring Math
type: handson
description: Learn about the functions that provide additional value to your graphs
weight: 3
duration: 15 minutes
---

***We don't have time to go through the hands on training for this section at the summit, but please follow along when you get home.***

1.  Create a new Timeboard
1.  Add a timeseries graph. Choose any metric; the default `system.load.1` will work just fine.
1.  Click the Add Metric button and add the same metric.
1.  Click the plus sign to the right of the metric query for the second metric. Hover over each of the choices to see what's available.
1.  Select Day Before from the Timeshift section. Notice there are now two lines on the graph. Click **Save**.
1.  Change the time window for the current dashboard to `The Past Week`. Notice that the lines show the same values separated by a day.
1.  Edit the graph you just created. Delete the second metric.
1.  Click the Advanced link on the first metric.
1.  Click the **Add a metric to this expression** button. Select the same metric and choose Day Before again in the Math Functions dialog.
1.  Change the math function from `a ; b` to `a - b`. Notice that the values are sometimes negative.
1.  Change the math function again to `abs( a - b )`. Click **Save**.
1.  Add a new graph with the same metric you used before. Click the Plus sign and choose Anomalies. Hover over the graph and select different values for bounds to see what changes.
1.  Change the anomaly aggregation method to each of the options. How does the graph change?
1.  Add another metric to the graph. If the metric was added with the anomaly function attached, remove it.
1.  Add a Robust Trend line to this second metric. Try out the other two trend lines to see the difference.

## Questions

1.  Above you worked with anomalies. Why do you think I didn't have you work with outliers?