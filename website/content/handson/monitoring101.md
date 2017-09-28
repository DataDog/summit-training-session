---
title: Datadog 101 - Monitoring 101
type: handson
description: Get started working with metrics and graphs
weight: 1
duration: 15-25 minutes
---
Everyone should get login information for a Datadog account they can use for this session. If you haven't received this information (and you are here in the room with us), contact the instructors. This will include a username and password for a Datadog account, as well as the IP Address for the load balancer of your cluster of servers.

1.  Login to your Demo Datadog Account. *Note: Use this demo even if you have the credentials for your company's account since it has been setup to collect data from the demo environment*
1.  Navigate to the Metrics Explorer (https://app.datadoghq.com/metric/explorer).
1.  Type `elasticsearch` in the **Graph** textbox. <br>
    This filters down the metrics available to just the ones with **elasticsearch** in the name.
1.  Select one of the metrics available, for instance `elasticsearch.search.query.total`
1.  Notice the **Over** dropdown is a list of all the tags relevant to this metric.
1.  Select **One graph per:`host`**. How many graphs do you see? Why?
1.  Change the metric to some other fun and cool metric and set **One graph per** to `host`. You now have some graphs since your environment includes some machines.
1.  Navigate to Dashboards and create a new Dashboard. Enter `First Test` for the name and choose **New TimeBoard**. We will talk about the differences soon.
1.  Notice the different visualization types. We have already talked about each of these.
1.  Drag and drop a Timeseries graph onto the canvas.
1.  Choose `elasticsearch.search.query.total` and **avg by** `host`.
1.  Try out the different **Display** types (Lines, Area, Bar) to see the differences.
2.  Add a Query Value viz to the canvas using the same metric.
3.  Add a Heat Map with the same metric.
4.  Repeat with the Distribution, Top List, Change, and Hostmap.
5.  Which graphs work well for this metric with 3 hosts? Take a look at the instructor's dashboard to see how this is different for all of your hosts on one dashboard.
1.  Navigate to the Host Map. Click on one of the servers running **elasticsearch**.
1.  Notice the tags assigned to the host.

## Questions

1.  In this hands-on exercise, you created a heat map. Was it interesting? How could it be more interesting?
1.  What is the width in pixels for each graph? How many data points are shown in that space? Does this change for the different sizes on the graph? How about as you zoom in and out.
1.  How do you adjust how data is aggregated over time?
1.  How do you adjust how data is aggregated over space?

{{< tweet text="I'm getting up to speed on Monitoring 101 in Datadog" linktext="Tweet your status" >}}

