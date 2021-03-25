SELECT 
    committer_name, 
    EXTRACT(hour FROM committer_date) AS `hour`, 
    EXTRACT(DAYOFWEEK FROM committer_date) AS `day_of_week` 
FROM {{ ref('intermediate_commit_user') }}
WHERE EXTRACT(hour FROM committer_date) NOT BETWEEN 9 AND 17 
OR EXTRACT(DAYOFWEEK FROM committer_date) NOT BETWEEN 1 AND 5
