

  + Snapshot Queries

    - Queries see the latest snapshot of the table as of a given commit or compaction action
    - For Merge on Read table,
      . Exposes near real time (few mins) data by merging the base & delta files of the latest
        slice on-the-fly (ie during query time)
    - For Copy on Write table,
      . Acts as a drop in replacement for existing parquet table +
        Upsert / delete & other write side features

  + Incremental Queries

    - Queries only see new data written to the table, since a given commit/compaction
    - This effectively provides change streams to enable incremental data pipelines

  + Read Optimized Queries

    - Queries see the latest snapshot of table as of a given commit/compaction action
    - Exposes only the base/columnar files in latest file slices and
      guarantees the same columnar query performance compared to a non-hudi columnar table


https://hudi.apache.org/docs/concepts.html#query-types