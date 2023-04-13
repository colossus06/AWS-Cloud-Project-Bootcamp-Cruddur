-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('simo','topcug@devtechops.dev' , 'simo' ,'e745595e-24fd-4cd7-9322-093642ce2b7b'),
  ('bayko','bayko@exampro.co' , 'bayko' ,'MOCK'),
  ('londo','lmollari@centari.com' ,'londo' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'simo' LIMIT 1),
    'Hello from seed',
    current_timestamp + interval '10 day'
  )