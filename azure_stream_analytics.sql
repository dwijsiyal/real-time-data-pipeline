SELECT
    *
INTO
    [database-output] -- output database alias
FROM
    [bus-trasport-data] -- input database alias

WHERE TRY_CAST([NumberOfBoardings] AS bigint) IS NOT NULL
