## Create Google BiqQuery project
1. open a browser and go to https://console.cloud.google.com/
2. click on `select a project`
3. in the popup click on `new project`
4. give the project a `name`
5. select the right organisation `if needed`
6. copy the `project-id` you need this for fivetran setup
7. leave google console open (we need it later)

## Setup Fivetran BigQuery destination
docs https://fivetran.com/docs/destinations/bigquery
1. open a browser and go to https://fivetran.com and login
2. click on the arrow in the left upper corner and click on `manage account`
3. click on add destination and give it a `name` this is were fivetran wil save your data
4. select Google Big Query as your destination
5. fill in the `project-id` (saved from earlier)
6. copy the Fivetran service account and grant it BigQuery User role in the google console
7. click `SAVE & TEST` congratz you have not connected Fivetran to Google Big Query

## Setup Github extraction using Fivetran
1. Go to fivetran and follow the instructions
2. Create a source etc..

## Install dbt (optional)
Open a terminal and run 
1. `brew update`
2. `brew install git`
3. `brew tap fishtown-analytics/dbt`
4. `brew install dbt`

## Create repo
1. go to github
2. create a repo
3. check it out locally

## Create a dbt project and setup local development
1. in terminal run dbt init 'my_repo_name'
2. open a browser and go to https://console.cloud.google.com/apis/credentials/wizard
3. choose the `Big Query API`
4. select `no i am not using them`
5. click on `What crednetials do i need?`
6. fill  in the following information: service account-name `dbt_user`, service-account-id `dbt_user`, key-type `JSON`
7. the key file wil be downloaded to your mac
8. copy this file to the ~/.dbt folder on a mac (if you dont know where your .dbt folder is located you can run `dbt debug --config-dir` in a terminal) `cp SOURCE ~/.dbt`
9. navigate to your .dbt directory and open the profiles.yml file using your prefered editor (code .)
10. copy the following content of the `profile.yaml` file
11. adjust the indicated fields and copy the name of the `profile`
12. go to your created dbt project and open the `dbt_project.yml` file
13. give the project a good `name` and copy the `profile name`
14. open a terminal and run dbt-debug congratz you have configured local development with .dbt

## Define sources and add staging model
1. give a brief dbt overview
2. delete `models/example` folder
3. create folder `models/github`
4. create file `models/github/github.yml`
5. add the sources to the `models/github/github.yml` file (make sure to fill in the correct database and schema)
6. create folder `models/github/staging`
7. create files `staging_commit`, `staging_user_email`, `staging_user`, `schema.yml`
8. copy the sql queries and explain them briefly
9. start filling in schema.yml do not add tests but do add metadata about some columns
4. dbt run 

## show the generated documentation
1. open a terminal and run `dbt docs generate`
2. run `dbt docs serve`
3. show the documentation including the lineage graph
4. close the documentation running in the terminal

## add default tests
1. open file `models/github/staging/schema.yml`
2. add tests `unique` and `not null`
3. open terminal and run `dbt test`
4. show terminal output


## add intermediate model
1. create folder `models/github/intermediate`
2. create files `models/github/intermedidate/schema.yml` and `models/github/intermediate/intermediate_commit_user.yml`
3. copy the sql query and explain it briefly
4. copy `schema.yml`
5. open a terminal and run `dbt run`
6. open a terminal and run `dbt generate docs`
6. open a terminal and run `dbt docs serve`

## add analysis model
1. create folder `models/github/anlysis`
2. create files `models/github/analysis/all_commiters_with_no_work_life_balance.yml`m `models/github/analysis/top_10_committers.yml` and `github/analysis/top_10_committers.yml`
3. copy the sql query and explain it briefly
4. copy `schema.yml`
5. open a terminal and run `dbt run`
6. open a terminal and run `dbt generate docs`
6. open a terminal and run `dbt docs serve`
7. show the lineage graph

## Configure DBT and Fivetran
1. create a `deployment.yml `file in the root folder
2. copy content 
3. explain briefly how it works
4. open a browser and go to https://fivetran.com/dashboard/dbt-transformations
5. configure github access following the instruction in Fivetran