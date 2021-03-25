
    
    



select count(*) as validation_errors
from `code-breakfast`.`dbt_misja`.`staging_commit`
where sha is null


