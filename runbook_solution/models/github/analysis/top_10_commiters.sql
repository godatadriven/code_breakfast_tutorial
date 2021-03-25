SELECT 
    name, 
    count(name) AS `total_commits`
FROM {{ ref('intermediate_user_commit') }}
GROUP BY name
ORDER BY count(name) DESC LIMIT 10