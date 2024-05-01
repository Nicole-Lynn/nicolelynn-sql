# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

##       Reasons to adopt this approach:
This approach provides more storage capacity and the spreading of the observations distributes the work load across servers,
therefore one certain server does not carryout all the work or a larger work load by itself.

##      Reasons not to adopt this approach:
This process is good in the long run though to get information, queries will not only be run on one server but on
all of them so it is a slow process overall and therefore getting the information required would take longer. If one server
went down, there would be loss of information.



## Partitioning by Hour

##      Reasons to adopt this approach:
This provides a more organized data where you know certain limits of or the information in each server and therefore if you want to
query within certain conditions you know where exactly to go and therefore a generally faster approach.

##      Reasons not to adopt this approach:
The downside of this approach would be that, while the observations are distributed across servers, because of the limits that
each server has there might be a server that has many more observations than others meanwhile another server might have less or
even no observations at all because of the set limits which is a waste of space and might lead to an overload to the server
with more observations.



## Partitioning by Hash Value

##      Reasons to adopt this approach:
Equal distribution of observations across servers and therefore more storage capacity. Getting information with certain conditions
might not require querying from all servers.

##      Reasons not to adopt this approach:
As much as querying might not require going into all servers, that condition of requiring to query from all servers is not fully
eliminated and there might still be a situation where you need to query across all servers and therefore still a slow process.
