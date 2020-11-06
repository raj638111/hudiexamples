

-- Copy on Write

  + File Slice
    - Contains only base file
      (ie no log file)

  + Implicit Compaction on every commit
    such that on only columnar data (Base file I suppose?) exist

  + Write amplification: High
  + Read amplification: Zero

  + Good for,
    - Read heavy use cases


