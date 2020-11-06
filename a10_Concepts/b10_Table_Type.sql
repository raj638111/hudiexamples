

What does a Table Type do?

  + Defines how data is written in DFS
  + Controls,
    - Index,
    - Timeline Activities
    - File Management
    - ...

https://hudi.apache.org/docs/concepts.html#table-types--queries


-- Available Table Types

  1. Copy On Write
    + Stores data using exclusively columnar file formats (e.g parquet)
    + Updates simply version & rewrite the files by performing a synchronous merge during write

  2. Merge On Read

    + Stores data using a combination of,
      - Columnar format(e.g parquet)
      - Row based (e.g avro) file formats

    + Updates are logged to delta files & later compacted to produce
      new versions of columnar files synchronously or asynchronously