SELECT id, 
       bio, 
       blog, 
       company, 
       created_at, 
       hireable, 
       location, 
       login, 
       name, 
       site_admin, 
       type, 
       updated_at 
FROM {{ source ('github', 'user')}}