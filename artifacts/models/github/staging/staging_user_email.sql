SELECT email, 
       name, 
       user_id 
FROM {{ source('github', 'user_email') }}