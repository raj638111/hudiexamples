

-- Timeline

  # Hudi maintains a timeline of all actions performed on the table at
    different **'instants' of time that helps provide instantaneous views of the table,
    while also efficiently supporting retrieval of data in the order of arrival

  # Hudi guarantees that the actions performed on the timeline are atomic &
    timeline consistent based on the instant time

-- Instant(Components)

  1. Instant action
    + Type of action performed on the table

  2. Instant time
    + Typically a timestamp (e.g: 20190117010349)
    + Monotonically increases in the order of action’s begin time

  3. state
    + Current state of the instant



