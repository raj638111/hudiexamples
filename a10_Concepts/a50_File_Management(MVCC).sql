

-- MVCC (Multi-version concurrency control) is adopted by Hudi

  + Compaction action
    - Merges logs and base files to produce new file slices

  + Cleaning action
    - Gets rid of unused/older file slices to reclaim space on DFS


