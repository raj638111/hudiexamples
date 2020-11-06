

-- Instant action (Available types)

  COMMITS
    - A commit denotes an atomic write of a batch of records into a table.

  CLEANS
    - Background activity that gets rid of older versions of files in the table, that are no longer needed.

  DELTA_COMMIT
    - A delta commit refers to an atomic write of a batch of records into a MergeOnRead type table,
      where some/all of the data could be just written to delta logs.

  COMPACTION
    - Background activity to reconcile differential data structures within Hudi
    - e.g: moving updates from row based log files to columnar formats.
      Internally, compaction manifests as a special commit on the timeline

  ROLLBACK
    - Indicates that a commit/delta commit was unsuccessful & rolled back,
      removing any partial files produced during such a write

  SAVEPOINT
    - Marks certain file groups as “saved”, such that cleaner will not delete them.
      It helps restore the table to a point on the timeline, in case of disaster/data recovery scenarios.
