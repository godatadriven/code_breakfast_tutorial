

  create or replace view `code-breakfast`.`dbt_misja`.`staging_user_email`
  OPTIONS()
  as select * from `code-breakfast`.`code_breakfast_github`.`user_email`;

