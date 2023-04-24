UPDATE public.users 
SET 
  bio = "i like tech"
  display_name= "simo"
WHERE 
  users.cognito_user_id = %(cognito_user_id)s
RETURNING handle;