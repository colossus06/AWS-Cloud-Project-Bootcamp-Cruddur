-- this file was manually created
INSERT INTO public.users (email, display_name, handle, cognito_user_id)
VALUES
  -- we can grab the cognito_user_id manually from the Congito Console
  ('topcug@devtechops.dev', 'simo', 'simo' ,'5dde97c4-f1dc-4507-8ce8-42639d4f8dda');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'simo' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )