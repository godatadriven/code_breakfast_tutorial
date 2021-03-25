SELECT sha, 
       author_date, 
       author_email, 
       author_name, 
       committer_date, 
       committer_email, 
       committer_name, 
       message 
FROM {{ source('github', 'commit') }}