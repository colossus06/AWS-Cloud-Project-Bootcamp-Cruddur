-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('elka', 'topcug@devtechops.dev', 'elka2222222' ,'topcug@devtechops.dev');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'elka2222222' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )