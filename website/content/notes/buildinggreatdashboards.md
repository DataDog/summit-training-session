+++
title = "Building Great Dashboards"
type = "notes"
date = "2016-10-17T08:46:04-04:00"
weight = 2
description = "Assemble your graphs into comprehensive dashboards"
+++

# HA Proxy Metrics

<table class="table">
<tr>
<td>
<strong>haproxy.backend_hosts</strong><br>(gauge)</td>
<td>Number of backend hosts.<br><em>shown as host</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.bytes.in_rate</strong><br>(gauge)</td>
<td>Rate of bytes in on backend hosts.<br><em>shown as byte/second</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.bytes.out_rate</strong><br>(gauge)</td>
<td>Rate of bytes out on backend hosts.<br><em>shown as byte/second</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.connect.time</strong><br>(gauge)</td>
<td>Average connect time over the last 1024 requests.<br><em>shown as millisecond</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.denied.req_rate</strong><br>(gauge)</td>
<td>Number of requests denied due to security concerns.<br><em>shown as request/second</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.denied.resp_rate</strong><br>(gauge)</td>
<td>Number of responses denied due to security concerns.<br><em>shown as response/second</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.errors.con_rate</strong><br>(gauge)</td>
<td>Rate of requests that encountered an error trying to connect to a backend server.<br><em>shown as error/second</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.errors.resp_rate</strong><br>(gauge)</td>
<td>Rate of responses aborted due to error.<br><em>shown as error/second</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.queue.current</strong><br>(gauge)</td>
<td>Number of requests without an assigned backend.<br><em>shown as request</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.queue.time</strong><br>(gauge)</td>
<td>Average queue time over the last 1024 requests.<br><em>shown as millisecond</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.response.1xx</strong><br>(gauge)</td>
<td>Backend HTTP responses with 1xx code.<br><em>shown as response</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.response.2xx</strong><br>(gauge)</td>
<td>Backend HTTP responses with 2xx code.<br><em>shown as response</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.response.3xx</strong><br>(gauge)</td>
<td>Backend HTTP responses with 3xx code.<br><em>shown as response</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.response.4xx</strong><br>(gauge)</td>
<td>Backend HTTP responses with 4xx code.<br><em>shown as response</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.response.5xx</strong><br>(gauge)</td>
<td>Backend HTTP responses with 5xx code.<br><em>shown as response</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.response.other</strong><br>(gauge)</td>
<td>Backend HTTP responses with other code (protocol error).<br><em>shown as response</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.response.time</strong><br>(gauge)</td>
<td>Average response time over the last 1024 requests (0 for TCP).<br><em>shown as millisecond</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.session.current</strong><br>(gauge)</td>
<td>Number of active backend sessions.<br><em>shown as connection</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.session.limit</strong><br>(gauge)</td>
<td>Configured backend session limit.<br><em>shown as connection</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.session.pct</strong><br>(gauge)</td>
<td>Percentage of sessions in use (backend.session.current/backend.session.limit * 100).<br><em>shown as percent</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.session.rate</strong><br>(gauge)</td>
<td>Number of backend sessions created per second.<br><em>shown as connection/second</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.session.time</strong><br>(gauge)</td>
<td>Average total session time over the last 1024 requests.<br><em>shown as millisecond</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.warnings.redis_rate</strong><br>(gauge)</td>
<td>Number of times a connection to a server was retried.<br><em>shown as error/second</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.backend.warnings.retr_rate</strong><br>(gauge)</td>
<td>Number of times a request was redispatched to another server.<br><em>shown as error/second</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.count_per_status</strong><br>(gauge)</td>
<td>Number of hosts by status (UP/DOWN/NOLB/MAINT).<br><em>shown as host</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.bytes.in_rate</strong><br>(gauge)</td>
<td>Rate of bytes in on frontend hosts.<br><em>shown as byte/second</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.bytes.out_rate</strong><br>(gauge)</td>
<td>Rate of bytes out on frontend hosts.<br><em>shown as byte/second</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.denied.req_rate</strong><br>(gauge)</td>
<td>Number of requests denied due to security concerns.<br><em>shown as request/second</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.denied.resp_rate</strong><br>(gauge)</td>
<td>Number of responses denied due to security concerns.<br><em>shown as response/second</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.errors.req_rate</strong><br>(gauge)</td>
<td>Rate of request errors.<br><em>shown as error/second</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.requests.rate</strong><br>(gauge)</td>
<td>Number of HTTP requests per second.<br><em>shown as request/second</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.response.1xx</strong><br>(gauge)</td>
<td>Frontend HTTP responses with 1xx code.<br><em>shown as response</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.response.2xx</strong><br>(gauge)</td>
<td>Frontend HTTP responses with 2xx code.<br><em>shown as response</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.response.3xx</strong><br>(gauge)</td>
<td>Frontend HTTP responses with 3xx code.<br><em>shown as response</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.response.4xx</strong><br>(gauge)</td>
<td>Frontend HTTP responses with 4xx code.<br><em>shown as response</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.response.5xx</strong><br>(gauge)</td>
<td>Frontend HTTP responses with 5xx code.<br><em>shown as response</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.response.other</strong><br>(gauge)</td>
<td>Frontend HTTP responses with other code (protocol error).<br><em>shown as response</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.session.current</strong><br>(gauge)</td>
<td>Number of active frontend sessions.<br><em>shown as connection</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.session.limit</strong><br>(gauge)</td>
<td>Configured backend session limit.<br><em>shown as connection</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.session.pct</strong><br>(gauge)</td>
<td>Percentage of sessions in use (frontend.session.current/frontend.session.limit * 100).<br><em>shown as percent</em>
</td>
</tr>
<tr>
<td>
<strong>haproxy.frontend.session.rate</strong><br>(gauge)</td>
<td>Number of frontend sessions created per second.<br><em>shown as connection/second</em>
</td>
</tr>
</table>

# Apache Metrics
<table class="table">
<tr>
<td>
<strong>apache.net.bytes</strong><br>(gauge)</td>
<td>The total number of bytes served.<br><em>shown as byte</em>
</td>
</tr>
<tr>
<td>
<strong>apache.net.bytes_per_s</strong><br>(gauge)</td>
<td>The number of bytes served per second.<br><em>shown as byte/second</em>
</td>
</tr>
<tr>
<td>
<strong>apache.net.hits</strong><br>(gauge)</td>
<td>The total number of requests performed.<br><em>shown as request</em>
</td>
</tr>
<tr>
<td>
<strong>apache.net.request_per_s</strong><br>(gauge)</td>
<td>The number of requests performed per second.<br><em>shown as request/second</em>
</td>
</tr>
<tr>
<td>
<strong>apache.performance.cpu_load</strong><br>(gauge)</td>
<td>The percent of CPU used.<br><em>shown as percent</em>
</td>
</tr>
<tr>
<td>
<strong>apache.performance.busy_workers</strong><br>(gauge)</td>
<td>The number of workers serving requests.<br><em>shown as thread</em>
</td>
</tr>
<tr>
<td>
<strong>apache.performance.idle_workers</strong><br>(gauge)</td>
<td>The number of idle workers.<br><em>shown as thread</em>
</td>
</tr>
<tr>
<td>
<strong>apache.performance.uptime</strong><br>(gauge)</td>
<td>The amount of time the server has been running.<br><em>shown as second</em>
</td>
</tr>
</table>
# MySQL Metrics
| Metric | Description|
|------|--------| 
| <strong>mysql.galera.wsrep_cluster_size</strong><br>(gauge) | The current number of nodes in the Galera cluster.<br><em>shown as node</em> |
| <strong>mysql.innodb.buffer_pool_free</strong><br>(gauge) | The number of free pages in the InnoDB Buffer Pool.<br><em>shown as page</em> |
| <strong>mysql.innodb.buffer_pool_total</strong><br>(gauge) | The total number of pages in the InnoDB Buffer Pool.<br><em>shown as page</em> |
| <strong>mysql.innodb.buffer_pool_used</strong><br>(gauge) | The number of used pages in the InnoDB Buffer Pool.<br><em>shown as page</em> |
| <strong>mysql.innodb.buffer_pool_utilization</strong><br>(gauge) | The utilization of the InnoDB Buffer Pool.<br><em>shown as fraction</em> |
| <strong>mysql.innodb.current_row_locks</strong><br>(gauge) | The number of current row locks.<br><em>shown as lock</em> |
| <strong>mysql.innodb.data_reads</strong><br>(gauge) | The rate of data reads.<br><em>shown as read/second</em> |
| <strong>mysql.innodb.data_writes</strong><br>(gauge) | The rate of data writes.<br><em>shown as write/second</em> |
| <strong>mysql.innodb.mutex_os_waits</strong><br>(gauge) | The rate of mutex OS waits.<br><em>shown as event/second</em> |
| <strong>mysql.innodb.mutex_spin_rounds</strong><br>(gauge) | The rate of mutex spin rounds.<br><em>shown as event/second</em> |
| <strong>mysql.innodb.mutex_spin_waits</strong><br>(gauge) | The rate of mutex spin waits.<br><em>shown as event/second</em> |
| <strong>mysql.innodb.os_log_fsyncs</strong><br>(gauge) | The rate of fsync writes to the log file.<br><em>shown as write/second</em> |
| <strong>mysql.innodb.row_lock_time</strong><br>(gauge) | Fraction of time spent (ms/s) acquring row locks.<br><em>shown as fraction</em> |
| <strong>mysql.innodb.row_lock_waits</strong><br>(gauge) | The number of times per second a row lock had to be waited for.<br><em>shown as event/second</em> |
| <strong>mysql.net.connections</strong><br>(gauge) | The rate of connections to the server.<br><em>shown as connection/second</em> |
| <strong>mysql.net.max_connections</strong><br>(gauge) | The maximum number of connections that have been in use simultaneously since the server started.<br><em>shown as connection</em> |
| <strong>mysql.performance.com_delete</strong><br>(gauge) | The rate of delete statements.<br><em>shown as query/second</em> |
| <strong>mysql.performance.com_delete_multi</strong><br>(gauge) | The rate of delete-multi statements.<br><em>shown as query/second</em> |
| <strong>mysql.performance.com_insert</strong><br>(gauge) | The rate of insert statements.<br><em>shown as query/second</em> |
| <strong>mysql.performance.com_insert_select</strong><br>(gauge) | The rate of insert-select statements.<br><em>shown as query/second</em> |
| <strong>mysql.performance.com_replace_select</strong><br>(gauge) | The rate of replace-select statements.<br><em>shown as query/second</em> |
| <strong>mysql.performance.com_select</strong><br>(gauge) | The rate of select statements.<br><em>shown as query/second</em> |
| <strong>mysql.performance.com_update</strong><br>(gauge) | The rate of update statements.<br><em>shown as query/second</em> |
| <strong>mysql.performance.com_update_multi</strong><br>(gauge) | The rate of update-multi.<br><em>shown as query/second</em> |
| <strong>mysql.performance.created_tmp_disk_tables</strong><br>(gauge) | The rate of internal on-disk temporary tables created by second by the server while executing statements.<br><em>shown as table/second</em> |
| <strong>mysql.performance.created_tmp_files</strong><br>(gauge) | The rate of temporary files created by second.<br><em>shown as file/second</em> |
| <strong>mysql.performance.created_tmp_tables</strong><br>(gauge) | The rate of internal temporary tables created by second by the server while executing statements.<br><em>shown as table/second</em> |
| <strong>mysql.performance.kernel_time</strong><br>(gauge) | Percentage of CPU time spent in kernel space by MySQL.<br><em>shown as percent</em> |
| <strong>mysql.performance.key_cache_utilization</strong><br>(gauge) | The key cache utilization ratio.<br><em>shown as fraction</em> |
| <strong>mysql.performance.open_files</strong><br>(gauge) | The number of open files.<br><em>shown as file</em> |
| <strong>mysql.performance.open_tables</strong><br>(gauge) | The number of of tables that are open.<br><em>shown as table</em> |
| <strong>mysql.performance.qcache_hits</strong><br>(gauge) | The rate of query cache hits.<br><em>shown as hit/second</em> |
| <strong>mysql.performance.questions</strong><br>(gauge) | The rate of statements executed by the server.<br><em>shown as query/second</em> |
| <strong>mysql.performance.slow_queries</strong><br>(gauge) | The rate of slow queries.<br><em>shown as query/second</em> |
| <strong>mysql.performance.table_locks_waited</strong><br>(gauge) | The total number of times that a request for a table lock could not be granted immediately and a wait was needed.<em></em> |
| <strong>mysql.performance.threads_connected</strong><br>(gauge) | The number of currently open connections.<br><em>shown as connection</em> |
| <strong>mysql.performance.threads_running</strong><br>(gauge) | The number of threads that are not sleeping.<br><em>shown as thread</em> |
| <strong>mysql.performance.user_time</strong><br>(gauge) | Percentage of CPU time spent in user space by MySQL.<br><em>shown as percent</em> |
| <strong>mysql.replication.seconds_behind_master</strong><br>(gauge) | The lag in seconds between the master and the slave.<br><em>shown as second</em> |
| <strong>mysql.replication.slave_running</strong><br>(gauge) | A boolean showing if this server is a replication slave that is connected to a replication master.<em></em> |
| <strong>mysql.performance.queries</strong><br>(gauge) | The rate of queries.<br><em>shown as query/second</em> |
