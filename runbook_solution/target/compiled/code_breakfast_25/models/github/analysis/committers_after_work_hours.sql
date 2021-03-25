SELECT 
    committer_name,
FROM `code-breakfast`.`dbt_misja`.`intermediate_user_commit`
WHERE commit_hour NOT BETWEEN 9 AND 17 
OR commit_day_of_week NOT BETWEEN 1 AND 5