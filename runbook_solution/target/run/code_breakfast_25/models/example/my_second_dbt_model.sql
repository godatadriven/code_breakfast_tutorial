

  create or replace view `code-breakfast`.`dbt_misja`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `code-breakfast`.`dbt_misja`.`my_first_dbt_model`
where id = 1;

