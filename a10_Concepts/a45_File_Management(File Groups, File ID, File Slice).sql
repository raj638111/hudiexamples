
-- File management 101

  + basepath
    - Base path of a Hudi table

  + partitionpath
    - Partition path relative to basepath

  + file groups & file id
    - Within each partition, files are organized into file groups, uniquely identified by a file id

  + file slices
    - Each file group contains several file slices
    - A slice contains,
      1. Base file
        ~ Is produces at 'commit' or 'compaction' instant time
        ~ Is *.parquet
      2. Log files
        ~ aka Delta log file
        ~ Contains inserts / updates to the base file (since th base file was produced)
        ~ Is row based




