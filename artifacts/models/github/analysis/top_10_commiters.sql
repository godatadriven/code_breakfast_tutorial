SELECT 
    name, 
    count(name) AS `total_commits`
FROM {{ ref('intermediate_commit_user') }}
GROUP BY name
ORDER BY count(name) DESC LIMIT 10