

  # Update / Delete records

    + which in turn provides near real time data when used with
      ~ Merge on Read Table
        (and)
      ~ Snapshot queries

  # Ability to fetch records that have changed (Change streams)

-- Also good to know

  + Queries are immune to any write failure (or) partial writes
    (In case of an in-flight commit, query returns the data for the old commit version)
    (In case of a failed commit, query returns the data for the old commit version)
    https://hudi.apache.org/docs/concepts.html#copy-on-write-table