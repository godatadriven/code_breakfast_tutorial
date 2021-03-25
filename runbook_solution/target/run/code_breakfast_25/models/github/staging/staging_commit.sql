

  create or replace view `code-breakfast`.`dbt_misja`.`staging_commit`
  OPTIONS()
  as select * from `code-breakfast`.`code_breakfast_github`.`commit`;

