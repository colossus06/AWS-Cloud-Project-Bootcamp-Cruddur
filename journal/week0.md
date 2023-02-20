# Week 0 — Billing and Architecture

## Required Homework/Tasks

### Install and Verify AWS CLI

I have already aws cli and all i had to do is to verify the version.

![image](https://user-images.githubusercontent.com/96833570/220194729-05f4a072-738c-4148-b8a4-8a84c16fa800.png)


### Generate AWS Credentials

I had already created an IAM admin and configured the credentials. Verified by:

`ls C:\Users\PC\.aws\`

![image](https://user-images.githubusercontent.com/96833570/220194900-bce6c646-8306-4a2b-9023-47cd4c09b609.png)


### Create a Budget

I have created a budget and an sns topic. I got the `AWS Budget Notification `email asap.

![image](https://user-images.githubusercontent.com/96833570/220195204-bd6a0de0-d5d4-43e0-acf8-dfe82055064a.png)

I excercised creating another one and but with cli this time using [official documentation](https://docs.aws.amazon.com/cli/latest/reference/budgets/create-budget.html) and [week 0 video](https://www.youtube.com/watch?v=OdUnNuKylHg&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=16&ab_channel=ExamPro).


I created the following files in `aws/json` dir:
* alarm-config.json
* budget.json
* notifications-with-subscribers.json



### Recreate Logical Architectural Deisgn

Lucid Charts Share Link

#### Takeaways

```
aws sts get-caller-identity
```
