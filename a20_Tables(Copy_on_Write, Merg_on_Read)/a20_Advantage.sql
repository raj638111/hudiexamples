
-- Advantage

  + Queries are immune to any write failure or partial writes

    - As you can see (in picture), an old query does not see the current inflight commit’s files
      color coded in pink, but a new query starting after the commit picks up the new data.
      Thus queries are immune to any write failures/partial writes and only run on committed data

  + First class support for atomically updating data at file-level,
    instead of rewriting whole tables/partitions

  + Ability to incremental consume changes, as opposed to wasteful scans or
    fumbling with heuristics

  + Tight control of file sizes to keep query performance
    excellent (small files hurt query performance considerably)


https://hudi.apache.org/docs/concepts.html#copy-on-write-table