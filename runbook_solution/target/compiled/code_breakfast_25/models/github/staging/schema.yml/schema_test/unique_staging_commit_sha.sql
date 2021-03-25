
    
    



select count(*) as validation_errors
from (

    select
        sha

    from `code-breakfast`.`dbt_misja`.`staging_commit`
    where sha is not null
    group by sha
    having count(*) > 1

) validation_errors


