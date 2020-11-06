

Apart from having the same advantage of Copy on Write table, Additional advantage includes,

+ We now have commits every 1 minute
  - which might be highly inefficient in Copy-on_Write table because of 'synchronous merge'
    vis-a-vis the 'asynchronous merge' achieved through the use of delta files + Compaction
    (ie reduced write amplification which supports frequent commit of data)

