
  + Is a superset of copy on write table

    - ie it supports read optimized queries(like how copy
      on write table supports read **'optimized queries') by exposing
      only the **'base file' in the latest file slices
      (Good query performance)

          (+)

    - Row based delta log support (for incoming upserts)
      ~ which I believe improves write performance???
      ~ Which provides support for **'Snapshot queries' (expose near real time data (ie few mins delay))
        by mergin the delta log to the lates version of file-id on the fly during query time
      (Freshness of data)

-- Compactor

  + Chooses the delta log files, compacts that into the columnar base
    file (to keep the query performance in check (ie larger delta log files would incur
    longer merge times with merge data on query side))

  + Is a periodic process (Check snapshot below)
    (Is configurable. Example: A compacting strategy, where we aggressively compact the
    latest partitions compared to older partitions, we could ensure the read
    optimized queries see data published within X minutes in a consistent fashion)


https://hudi.apache.org/docs/concepts.html#merge-on-read-table