-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('simo','topcug@devtechops.dev' , 'simo' ,'5dde97c4-f1dc-4507-8ce8-42639d4f8dda'),
  ('bayko','bayko@exampro.co' , 'bayko' ,'MOCK'),
  ('Londo Mollari', 'lmollari@centari.com','londo','MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'simo' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )