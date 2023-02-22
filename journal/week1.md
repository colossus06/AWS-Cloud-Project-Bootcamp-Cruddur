# Week 1 — App Containerization



I added the following to `app.py`

```
if __name__ == "__main__":
  app.run(debug=True, host="0.0.0.0", port=8000)
```

Exported the backend url:

`export BACKEND_URL="*"`

And run the api on `/api/activities/home` endpoint:

```
cd backend-flask
export FRONTEND_URL="*"
export BACKEND_URL="*"
python3 -m flask run --host=0.0.0.0 --port=8000
```

![image](https://user-images.githubusercontent.com/96833570/220427575-ed48df84-31ba-42ff-b81f-c4b791a8259d.png)



![image](https://user-images.githubusercontent.com/96833570/220427593-c8579900-758b-4fbb-8d69-8fbe954bc3d0.png)

### Containerizing the backend

```
docker build -t  backend-flask ./backend-flask
```
![image](https://user-images.githubusercontent.com/96833570/220430406-9a80e3ba-4f07-41bd-91e4-4213d8aafac1.png)

### Debug time

I ran `docker run -p 4567:4567 backend-flask` and checked if environment variables are set.

`docker exec -it 7e48fe8784b1 bash`

![image](https://user-images.githubusercontent.com/96833570/220431135-67bd3892-f7b8-4d09-adb4-9b5502db61c2.png)


I saw that i didn't set the envs so i got `404` error.  https://http.cat/[404]

![image](https://user-images.githubusercontent.com/96833570/220431901-b96bad1d-c8cc-4344-a580-8941ef847d30.png)

I specified env variables implicitly on command line:

`docker run --rm -p 4567:4567 -it -e FRONTEND_URL='*' -e BACKEND_URL='*' backend-flask`

Verified by attaching a shell:

![image](https://user-images.githubusercontent.com/96833570/220436340-17936104-956a-4151-9ae9-1d0ce83f4348.png)

Verified with `curl`:

![image](https://user-images.githubusercontent.com/96833570/220436539-16b437b7-bf29-4d63-950e-22168a2ca2c2.png)


Let's continue with the frontend

## Containerizing frontend

```
cd frontend-react-js
npm i
cd ..
docker-compose up
```

My terminal got hang up. I restarted my gitpod.

![image](https://user-images.githubusercontent.com/96833570/220440069-77da608d-5bec-4c99-9e6b-308c98a7167a.png)

![image](https://user-images.githubusercontent.com/96833570/220456784-174d49c4-9a19-4eed-97c3-9d0467252369.png)


### Creating the notification feature

#### Backend

Edited the open api file, app.py and created `notifications_activities.py` file on service dir.

![image](https://user-images.githubusercontent.com/96833570/220624279-9f5aec06-475e-4881-897a-f5a246f650ea.png)


![image](https://user-images.githubusercontent.com/96833570/220623834-8a268924-2c6c-499c-a07d-ff892f75673d.png)


#### Frontend

![image](https://user-images.githubusercontent.com/96833570/220626642-68f52f34-08f6-4518-bfbb-83d03720ba4f.png)


![image](https://user-images.githubusercontent.com/96833570/220626393-e22c941b-4811-4082-b166-a0d95aeaaeb6.png)

After a little more adjustment:

![image](https://user-images.githubusercontent.com/96833570/220627194-6af1a9f7-c733-4d5b-b6a8-95264aadda1d.png)


#### Takeaways

```
#identify what process id is using a port
lsof -P -i :5000

container escape// more on this



```
