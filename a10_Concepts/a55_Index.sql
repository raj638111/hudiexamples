

-- Index

  + Where it helps?
    - Helps in providing efficient upserts

  + Index constitutes..
    - Hudi key (record key + partition path)
      (mapped to)
    - group/file id

    Note
      - This mapping never changes
      - Mapped file group contains all version of group of records



  # https://hudi.apache.org/docs/concepts.html#index