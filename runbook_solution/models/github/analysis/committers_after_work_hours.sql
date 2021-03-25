SELECT 
    committer_name,
FROM {{ ref('intermediate_user_commit') }}
WHERE commit_hour NOT BETWEEN 9 AND 17 
OR commit_day_of_week NOT BETWEEN 1 AND 5
