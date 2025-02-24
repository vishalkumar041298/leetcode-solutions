SELECT today.id
    FROM Weather today 
    CROSS JOIN Weather yesterday

    WHERE DATEDIFF(today.recordDate,yesterday.recordDate) = 1
        AND today.temperature > yesterday.temperature
    ;
