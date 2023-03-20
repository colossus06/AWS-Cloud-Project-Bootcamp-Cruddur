-- this file was manually created
INSERT INTO public.users (email, display_name, handle, cognito_user_id)
VALUES
  -- we can grab the cognito_user_id manually from the Congito Console
  ('topcug@devtechops.dev', 'Joel Harnop', 'jomi' ,'MOCK'),
  ('denizkavuk86@gmail.com', 'Elya MINP', 'ell' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'jomi' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )