SELECT user.name, 
       user.bio, 
       user.blog, 
       user.company, 
       user.hireable, 
       user.location,commit.committer_date, 
       extract(hour FROM committer_date) AS `commit_hour`, 
       extract(minute FROM committer_date) AS `commit_minute`, 
       extract(dayofweek FROM committer_date) AS `commit_day_of_week`,
       commit.committer_email,
       commit.committer_name,
       commit.message,
FROM   `code-breakfast`.`dbt_misja`.`staging_commit` AS `commit` 
JOIN   `code-breakfast`.`dbt_misja`.`staging_user_email` AS `user_email` ON user_email.email = commit.committer_email 
JOIN   `code-breakfast`.`dbt_misja`.`staging_user` AS `user` ON user_email.user_id = user.id